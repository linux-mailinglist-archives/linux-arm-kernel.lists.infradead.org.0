Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA7E178729
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 01:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4qTAFt0q8KJjJsldpAtGJfA+tBw17w3vxmoREvqnzM=; b=CcoaGv620oSsjD
	T/y9uDSr4+9E3ZWvQLo1t3lINuJr0Vft6l2acYFgPnGg9JQgOd1xAIns2goGoEc1ke2bSmcaW9bU5
	YVIfH4JEs4gXyvS7jh1eQrnHWUSMp0j2gCtVWBKx2bDcjsm/Cug+BPKsJzgwlAwqZxN0XuR+eoPFx
	U74ry2bmGx3m6eWV795l+ToH144k+6r8F3Hjo2Lit+5fxMrxIMikPxTaML0XMbEZfbyXl6ePe3Pi+
	OQnogb0sSjcyinB7Rdm416LCLw3/FGqXwxIlXgvLfBaJOYstNRCMNJBU965zDpoX+BdHthS83i9mr
	U9I/ad/5FT7EftMYZw2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9IBj-0008AH-5u; Wed, 04 Mar 2020 00:47:03 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9IBZ-00089i-OS
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 00:46:55 +0000
Received: by mail-io1-xd44.google.com with SMTP id x21so419824iox.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 16:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gWULqsWkFFc3S8vtpoLm3M2Oc/ykoEB/9KBF47U9Qiw=;
 b=Lu7UARfSrsUvVpcCI6N1LYkVZzMNa0W7Xkuov69vKTfGM0AlqITcsTa5u4o91/42Rt
 1k7V8IBF62+wrmO//AAGkdYnmDBfvhhnHw3HPzCaiF3DBlaEGneyW6IZQd0GXsl3363z
 BuphrgYY0rC1i++Q6TNr3oRqOWxK2c82kzjMVECLt9O6E32N9fPkLHDRqFBmcVQmRvf8
 5p3XG6d+62Rkh1aArtDRhzuIWISBZf6hTODJmhMmDQCXsOAbG9aedZCWBlZqyVRhYJLi
 ebDp94saYd+CuIuvLBO34pUrn9T/PvtN8GwEPxYVEtkjmywFeCJhXMf2fZcZQVvy1Gas
 RasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gWULqsWkFFc3S8vtpoLm3M2Oc/ykoEB/9KBF47U9Qiw=;
 b=RMdhooOyA0OvYk2XTx/5lYXE9HIgTX5hrNZoQm/QNskNgt0BH6uit2nAzIHk/9mKgS
 0IupKUBdKSM/FrU8tUbWsh1+Lrq2VSTAOloEx2ObTrneigp3I5HTtf23/R3Fl0ks6loK
 Syc4+02qW/PzGLNQnaQjkMGs46MJuaxsRHN1t3gbQLo1PvA6okmnCPjl6gKQ8k2QUBaG
 IB/HmmuE59WrCXhXWf7Oe1ZLOEM6JVOy4R50fwtK1TKyzQPLysdC7GmH0dFx0N7+pwn+
 8uJJtY5d5A6X9faoKPN+0bi6K4DEoSwIoChe4N+rYfxYi+kfeyoOS9B2qAgzHN3pbSAr
 /ehQ==
X-Gm-Message-State: ANhLgQ2YnhQmDJ8t88rV3OeuEbMS9bf6cE1ce3wGfCzJsUIvNjkdJnEl
 9JwBATPp5Xd2xell+P5NUnur6WnduhnoopZxpVOSGw==
X-Google-Smtp-Source: ADFU+vuHhu4NtaKzrAJMH0Y+xQoDpQZob8gI+PIvVcHltWP+r3WgXejOJD7aHpKlO0ahyaflJrOjmiZ+NzCPYzlxPD0=
X-Received: by 2002:a02:240c:: with SMTP id f12mr476874jaa.65.1583282811961;
 Tue, 03 Mar 2020 16:46:51 -0800 (PST)
MIME-Version: 1.0
References: <20200303031725.14560-1-tangbin@cmss.chinamobile.com>
In-Reply-To: <20200303031725.14560-1-tangbin@cmss.chinamobile.com>
From: Jun Nie <jun.nie@linaro.org>
Date: Wed, 4 Mar 2020 08:46:41 +0800
Message-ID: <CABymUCMupAzJ00McXkBoApTT4NV_ZT1=hTyZA+YFdQfRoVSbyQ@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=5BPATCH=5D_ARM=3Amach=2Dzx=EF=BC=9Aremove_duplicate_debug_mes?=
 =?UTF-8?Q?sage?=
To: tangbin <tangbin@cmss.chinamobile.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_164653_832860_CE3BDEFB 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Shawn Guo <shawnguo@kernel.org>, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dGFuZ2JpbiA8dGFuZ2JpbkBjbXNzLmNoaW5hbW9iaWxlLmNvbT4g5LqOMjAyMOW5tDPmnIgz5pel
5ZGo5LqMIOS4iuWNiDExOjE45YaZ6YGT77yaCj4KPiByZW1vdmUgZHVwbGljYXRlIGRldl9lcnIg
bWVzc2FnZSwgYmVjYXVzZSBvZgo+IGRldm1faW9yZW1hcF9yZXNvdXJjZSwgd2hpY2ggaGFzIGFs
cmVhZHkgY29udGFpbnMuCj4KPiBTaWduZWQtb2ZmLWJ5OiB0YW5nYmluIDx0YW5nYmluQGNtc3Mu
Y2hpbmFtb2JpbGUuY29tPgo+IC0tLQo+ICBhcmNoL2FybS9tYWNoLXp4L3p4Mjk2NzAyLXBtLWRv
bWFpbi5jIHwgNCArLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxl
dGlvbnMoLSkKPgoKUmV2aWV3ZWQtYnk6IEp1biBOaWUgPGp1bi5uaWVAbGluYXJvLm9yZz4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
