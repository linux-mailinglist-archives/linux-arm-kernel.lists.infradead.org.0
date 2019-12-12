Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB4111D607
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 19:42:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N3VdibScoVErEe7b06cCNuIWNgTqzgbKPDcII9oF7w8=; b=DBIzLhQ43xGr50sAgCqYEKRAl
	p89HSLyVJ9x8MXOUVL0IZjcCLYe0+HwoxuBjJjr78vuxZFWPUtu7LVNcH85U1w0m0al6wqrUCgIsS
	XNoeB2JbmtU1sxYqJgYpe0FDf1BGuXEubAQv1pyrAToRMFC/UtddEM12RgnN8BcRED4TwCfuoEYRU
	tRyWUtDpjQZI3jpYRSdRLD6fXTYKItRZmyMCAYrmLuOklhedCBjpM2I6NlQgW3rWXjCeLJ9qSupB1
	sMFNh9dk08yu9+9pL8DcWN+wWCXujmf6fOI052K84KnCldTBD8XGSizp7p40wNxZUmhh/kFZHcV8r
	9rCxiYSbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifTPR-0001DE-Ue; Thu, 12 Dec 2019 18:41:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifTPJ-0001Cj-Ur; Thu, 12 Dec 2019 18:41:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so3885222wru.4;
 Thu, 12 Dec 2019 10:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=72YajA1rnf1+0GYcRZg+w7DqemoBrj7bzh2eLFUJiCE=;
 b=jNYnQoHT9D/iVwOUAeI1nYXpjIriEoi9Dw5l2o9FH2p/aEb+0YBuSa9axL/yreKfaq
 di+zCTiZj7gbHshdS5Y93GwwfD+rw3u9hwsdKLLlXyPe6zNVmCpaM6zIgdU+T61xCM3c
 QYv9CuD4Q6beHt6nMaR8GNpKLwk7obh9YzSAUv8VeCaG7hmhxaanGMcrSYbV7p9nQtHD
 UVDWO+7uAryoOkuMcvyKqw2rhgfRREpsAwjdP9T4wxgCQygIN5MAaPN0Fb8g/chmATOv
 06WVcz23ABetfzmtG5CA+MjyvkWTR9T0uJgs9jT7ZMiv96jiGpktQluK+X/M1YQ5U8Uh
 YVHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=72YajA1rnf1+0GYcRZg+w7DqemoBrj7bzh2eLFUJiCE=;
 b=fY7Vb84giQYZS+vq+AzcGFhvE5AEPKvFgGLI8d+QB5sN/CIh3VlflA/buu995VrDcr
 m1Z/Bh99k3az/YUfVHYPAnfUugcdmDotQO/CVWzDONC+eor45FSC8oHNCQicQG8iFyZo
 amrDRoO+r7Y17mahmSGUbdz0YbdapHHkIjAcujTJfDavg92fGKb608UlpwiZ4vl+uVv1
 7E778039T2iFyEPec2EneIFvFjj7Mxgqigr/e50eZXKHe/l7xzIEvDw7sQCRhCphmykT
 WAgCiA82BjIvm1f+tE7u8h+zEwOKPXS49cwXdYkPrylGn/7nFYSBVG4LLhRSKr08rKJP
 MoYQ==
X-Gm-Message-State: APjAAAUtf9HgCDU170lz8L2rQxgDXY10lljGSpXnqokPLrOtysVkHmZk
 xiPHAjPqWjvxvQWXCdyD/juhcyGccwQ=
X-Google-Smtp-Source: APXvYqx8ZThmxV87EE0UzwxMrK2+QTlXaMc9wq2IkRJkHgaXl++grGfqBwQvYlBMrQV4hI1I2Y1oUw==
X-Received: by 2002:adf:f58a:: with SMTP id f10mr8246259wro.105.1576176108476; 
 Thu, 12 Dec 2019 10:41:48 -0800 (PST)
Received: from localhost ([5.59.90.131])
 by smtp.gmail.com with ESMTPSA id k8sm7056412wrl.3.2019.12.12.10.41.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 10:41:47 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: WARNING: CPU: 3 PID: 1 at
 =?iso-8859-1?Q?=5F=5Fflush=5Fwork.isra.47+0x22c/0x248?=
Date: Thu, 12 Dec 2019 19:41:46 +0100
MIME-Version: 1.0
Message-ID: <8dec2d95-f483-44a9-8223-0f8f3de33238@gmail.com>
In-Reply-To: <5708082a-680f-4107-aaf8-a39d76037d77@gmail.com>
References: <5708082a-680f-4107-aaf8-a39d76037d77@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_104150_018438_8A41A713 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76
 chars
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1cnNkYXksIERlY2VtYmVyIDEyLCAyMDE5IDEyOjA5OjIxIEFNIENFVCwgVmljZW50ZSBC
ZXJnYXMgd3JvdGU6Cj4gSGksCj4gc2luY2UgdjUuNS1yYzEgZm91ciBlcXVhbCBjb25zZWN1dGl2
ZSB0cmFjZXMgYXBwZWFyZWQgdGhhdCBzZWVtIHJlbGF0ZWQgdG8KPiByb2NrY2hpcCBzb3VuZC4g
QXMgaSB3YXNuJ3Qgc3VyZSB0byB3aG9tIHNlbnQgdGhlIHJlcG9ydCBqdXN0IGFkZGVkCj4gZXZl
cnlib2R5IGZyb20KPiAuL3NjcmlwdHMvZ2V0X21haW50YWluZXIucGwgc291bmQvc29jL3JvY2tj
aGlwL3JrMzM5OV9ncnVfc291bmQuYwo+IHdoaWNoIGlzIHRoZSBmaWxlIGNvbnRhaW5nIG9uZSBv
ZiB0aGUgZnVuY3Rpb25zIGluIHRoZSB0cmFjZS4KPgo+IEJ5IHRoZSB3YXksIHNvdW5kIHdvcmtz
IGZpbmUuIEFmdGVyIGFsbCB0cmFjZXMsIHRoZXJlIGlzIHRoaXMgbWVzc2FnZSB0aGF0Cj4gY291
bGQgYWxzbyBiZSByZWxhdGVkOgo+IFsgICAgMC42MjUzNTRdIGRhNzIxOSA4LTAwMWE6IFVzaW5n
IGRlZmF1bHQgREFJIGNsayBuYW1lczogCj4gZGE3MjE5LWRhaS13Y2xrLCBkYTcyMTktZGFpLWJj
bGsKPgo+IFJlZ2FyZHMsCj4gIFZpY2VudGUuCgpQbGVhc2UsIGlnbm9yZSB0aGlzIGVtYWlsLiBU
aGUgaXNzdWUgaGFzIGFscmVhZHkgYmVlbiBzb2x2ZWQgd2l0aApodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9icm9vbmllL3NvdW5kLmdpdC9jb21taXQvP2g9
Zm9yLTUuNSZpZD00YmYyZTM4NWFhNTljMmZhZTVmODgwYWEyNWNmZDJiNDcwMTA5MDkzCgpSZWdh
cmRzLAogIFZpY2Vuw6cuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
