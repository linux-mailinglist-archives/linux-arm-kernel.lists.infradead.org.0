Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C192FFDCC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVRxr6LEHyRrOkot7GdXNJNmT09KA0opgZxyPIhZDp8=; b=cMFKGTlunAm/lr
	elTUlndGqfIF9DQ0/xN5/r+HUOUDKrZjjfMyTpNygA/LZgVQfXA6YtVClbUvvgO8HAMQ+2/xrwbdJ
	jz7wHP2l8fgb/a3DLHn9MG0H2gZS14UqlnUx7XoSEVrueDsg8ls9jEBQgp1w2UB/oFDefKYltMJjP
	Lcn/7FC5leHHXNugUdH77Vu2fGuMBntxfaQUUZDCpzW54XAU/A/+dgUrsilT8SneAsh/MFiD7/ZRW
	QXnqKG9eiZoiOYXofrr6QoiXXma3EDIHcd5qwL8ZmCRSF2c/FXGKGslNSq3AnrE7lZgspUm5ru0wb
	/NfQ1MnH8cjDzb+aFt9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVaR-0002Yn-2m; Tue, 30 Apr 2019 16:26:31 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVaK-0002YO-60
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:26:25 +0000
Received: by mail-lj1-x241.google.com with SMTP id z26so13412510ljj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 09:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ddCJf1YFz8rA9DAzcZDKHt4qcSw5YF87Zwjmn6TTLgQ=;
 b=tZapprxtTa/zkdCqeQtj4TcNq9NfSDAlibhlVJo2licOsObGHwRLBrIBu1zL/JtVQD
 8K4/ZU1yTehXX2Ky7Fs033NsXRDf0VEeZMnOMtQMCJbZTwn/txNGL+GyaGFZ0OTbJWq8
 2EoXncyDNeqsUsHtuxW1CAVHWLM8+/BADn/F3VAXiuphoy66PsfupG/VmCpFshONT41/
 eTIyEEeWtYW1ySTRqU/vkugUd7lG19ZP8hJrCXbkzt2YZAzXmwQdzy0JmonGQEroEbqU
 UrsrBdf4e6nclu9Vm7C+jv4bfnv6cZf5gGH2cX0of5XTz7RZHheg9vlod4RizmXAFIzc
 iIIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ddCJf1YFz8rA9DAzcZDKHt4qcSw5YF87Zwjmn6TTLgQ=;
 b=DYel868cMciWTsCcdYPvlm+sR932DEIZ7Op8gkH+jYo5UJiAX5AKlRThFtJimxrCuX
 2yAwNia2xN9jWraFyUGG+5i1uCBkAqb02XML9FefelJLfFQWkANZNHMh5Ms6AJGAsmpD
 Zhgi5mNP47IPyiFs9A1ro0iNAANtVy0YlaYfIkddbHcLitYuWxA7c1tcVpzyznBknQzt
 5lzOlsLgdZnJ2njBxUY+UhXrOQPf2B3QOWtlSZ2tbf7ZELRBrBFZsLJArQs4NGjNMdK+
 W84I6GsxVsYLQBPvS03CwKsNVW3ew4P8Mu9japw87rrIe6AyyBkt7jBz1FG4Ho6Wsa02
 aFFA==
X-Gm-Message-State: APjAAAXSs2zxlQS/zBPwkFSbNOY1P4IbLnshp/B/mD79mhrJDisP9p2B
 is3Ayw47Fj1c5Mh82Ip9iq6wfKksZLrbw6+xRmo4f7Zd2nk=
X-Google-Smtp-Source: APXvYqy1phY5J7LnTZQNjEpIIFzUXXXwv1OgOWpswwtC9tH9nkB5ncNQLVFA7+s1oTiDm9Wu6cc8fcjxH+xF/IAAfUA=
X-Received: by 2002:a2e:8794:: with SMTP id n20mr38305019lji.76.1556641582066; 
 Tue, 30 Apr 2019 09:26:22 -0700 (PDT)
MIME-Version: 1.0
References: <a45b70bae964b15317167304a89ba1094a769916.1556640947.git.agx@sigxcpu.org>
In-Reply-To: <a45b70bae964b15317167304a89ba1094a769916.1556640947.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Apr 2019 13:26:14 -0300
Message-ID: <CAOMZO5DBzG_9SLQnjXBdb1+7rbR60t7gqjfuYY7SS4jTbOEY8A@mail.gmail.com>
Subject: Re: [PATCH] amd64: mxc: select CONFIG_SOC_BUS
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_092624_226959_4C4B1682 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpPbiBUdWUsIEFwciAzMCwgMjAxOSBhdCAxOjE4IFBNIEd1aWRvIEfDvG50aGVy
IDxhZ3hAc2lneGNwdS5vcmc+IHdyb3RlOgo+Cj4gaS5NWDggbmVlZHMgc29jX2RldmljZV9yZWdp
c3Rlciwgb3RoZXJ3aXNlIHRoZSBidWlsZCBmYWlscyBsaWtlOgo+Cj4gICBhYXJjaDY0LWxpbnV4
LWdudS1sZDogZHJpdmVycy9zb2MvaW14L3NvYy1pbXg4Lm86IGluIGZ1bmN0aW9uIGBpbXg4X3Nv
Y19pbml0JzoKPiAgIHNvYy1pbXg4LmM6KC5pbml0LnRleHQrMHgxMzApOiB1bmRlZmluZWQgcmVm
ZXJlbmNlIHRvIGBzb2NfZGV2aWNlX3JlZ2lzdGVyJwo+ICAgYWFyY2g2NC1saW51eC1nbnUtbGQ6
IHNvYy1pbXg4LmM6KC5pbml0LnRleHQrMHgxMzApOiByZWxvY2F0aW9uIHRydW5jYXRlZCB0byBm
aXQ6IFJfQUFSQ0g2NF9DQUxMMjYgYWdhaW5zdCB1bmRlZmluZWQgc3ltYm9sIGBzb2NfZGV2aWNl
X3JlZ2lzdGVyJwo+ICAgbWFrZTogKioqIFtNYWtlZmlsZToxMDUxOiB2bWxpbnV4XSBFcnJvciAx
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgo+Cj4g
LS0tCj4gVGhpcyB3YXMgc2VlbiBvbiBuZXh0LTIwMTkwNDMwLgoKQSBmaXggZm9yIHRoaXMgaGFz
IGJlZW4gcG9zdGVkOgpodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS80LzI0LzI1NgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
