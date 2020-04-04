Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D35F519E60B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 17:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeMb4JYSn/FypppL/hH3Oidw4nB1Xx7CChpdveGR6GQ=; b=IJppM8Zm4Rq+s9
	8/iEbs5Ryw67OV0384EfmcoSLIFIV9gB5AsSFMYlCMf0ETZGiUwrPLasLHiV9wMUE+QZmnPM+d8Z0
	lw/B7KLN7fZsRrJqeBL3bcpijmyiPmHexoe5zm23gZ5/JjydCJNsV3tOVonTvr2Y/ED86a8k9dG0e
	4NEGBBzI6znifqfx0ZoHk3Dsu44KHgaqSDL4E0T5NfxvvGKdFIj0FXEd3qUAwLrdRDtv7cX32OufD
	wXGXvafZDZtbQXlR/IwZxgFiBzfR9KHOozK+M1oYxq2lEnaoTkUnOk+Z8mSKxFBJe50nfyTx5hRbi
	y29HXlUv4BJFUND8U0VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKkXx-0002bV-0T; Sat, 04 Apr 2020 15:17:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKkXq-0002Y2-Es
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 15:17:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id k191so5150857pgc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 08:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lkx/PDRUrbuIL8ZH/z7Ipoul4vzVtKjRl5EKv8ZnQbg=;
 b=IrFJh1K/98kXxSDXGPejYN4e7zKLkA6OGaCSCAZYxtA57gT0+rGVywLPYc/ce4dQuo
 k88bemNyVWr7gwc6flBvONIBiH7ZMh8l9IeD1UqNJkHInBXCqjIa5+nAV7KeO/YyJQAy
 dfCjhOLc42+0xS7hFt4zHO37GeuxI893KEip4wUXAlOBnutz/Z7kgP3izLyA4sbH99n6
 9l4eraPTVmsE+TKXI+LDoXVlQya0A7mdgVty0/WiYfGUFpPOPwEisX07t94GrfEmga6K
 w+yUzHBlU7xQbVtNnk17kqF2XjipPPURQGx8PFYREzAbnpb46MkcvdTBo7nVonG8czhj
 Kvpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lkx/PDRUrbuIL8ZH/z7Ipoul4vzVtKjRl5EKv8ZnQbg=;
 b=PrTyeAR/vI003RDbTxIps/EvNRqZp9LVnhFbpwuYE+/i0sWd6P0/zmXL0QdIBVCjzz
 8pb/F/CP8huFJRNmnZGFZu1sa6Hl1bk54cc5nq/N4szuNe3W2jNPRTwGkKFMgzmjDYaB
 HtoVzTuL6NuCsEbEYq3pLCy3IAYD4r9EPe1e0MehhQzYFwtzFar402J9tSIe4QjgpkOj
 nCeDnuO1pZEgS8huBBysYBOS9tK5ONdHFDL9nSm8aD4m7DRRU8SNq1tQG1sTZD45I2FA
 ejnz/0oB9pZFhGaUlQtLt+KTiASSfoYoVgRnnA2iPsqbc+0rl6rSP4nvzn2gU9m1/55O
 ftZw==
X-Gm-Message-State: AGi0PuZlceKoc6jIGLbsFOiCT/iPLRf0Ca7aY25UldBBTVKkmnowJhN6
 qTXZZrTF7g0DBdTymZ0QeFHS24iNc5gtJcxUB+w=
X-Google-Smtp-Source: APiQypKYFZLwu2/QO3pceJcENh5As9ISGvBBZd3LrD2FLAhfckw9T5K7GuM0sThal21sOy41LEWm5A0+19H5hbVZgxc=
X-Received: by 2002:a63:1c1:: with SMTP id 184mr13808647pgb.203.1586013433253; 
 Sat, 04 Apr 2020 08:17:13 -0700 (PDT)
MIME-Version: 1.0
References: <524ae90a-a7cb-feee-6107-743c52c2b1e4@web.de>
In-Reply-To: <524ae90a-a7cb-feee-6107-743c52c2b1e4@web.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 4 Apr 2020 18:17:00 +0300
Message-ID: <CAHp75VcBKEJtEZg9wUVdqnSHWb3gaOx493GGWMtisdTAwxmGkA@mail.gmail.com>
Subject: Re: [PATCH] ARM: pxa: ssp: Delete an error message in pxa_ssp_probe()
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_081714_502841_B05848EC 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Tang Bin <tangbin@cmss.chinamobile.com>, YueHaibing <yuehaibing@huawei.com>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 Enrico Weigelt <lkml@metux.net>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBBcHIgNCwgMjAyMCBhdCA1OjAzIFBNIE1hcmt1cyBFbGZyaW5nIDxNYXJrdXMuRWxm
cmluZ0B3ZWIuZGU+IHdyb3RlOgo+Cj4gRnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNl
cnMuc291cmNlZm9yZ2UubmV0Pgo+IERhdGU6IFNhdCwgNCBBcHIgMjAyMCAxNTo1MDoxMCArMDIw
MAo+IFN1YmplY3Q6IFtQQVRDSF0gQVJNOiBweGE6IHNzcDogRGVsZXRlIGFuIGVycm9yIG1lc3Nh
Z2UgaW4gcHhhX3NzcF9wcm9iZSgpCj4KPiBUaGUgZnVuY3Rpb24g4oCccGxhdGZvcm1fZ2V0X2ly
ceKAnSBjYW4gbG9nIGFuIGVycm9yIGFscmVhZHkuCj4gVGh1cyBvbWl0IGEgcmVkdW5kYW50IG1l
c3NhZ2UgZm9yIHRoZSBleGNlcHRpb24gaGFuZGxpbmcgaW4gdGhlCj4gY2FsbGluZyBmdW5jdGlv
bi4KCi4uLgoKPiAgICAgICAgIHNzcC0+aXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAwKTsK
PiAtICAgICAgIGlmIChzc3AtPmlycSA8IDApIHsKPiAtICAgICAgICAgICAgICAgZGV2X2Vycihk
ZXYsICJubyBJUlEgcmVzb3VyY2UgZGVmaW5lZFxuIik7Cj4gKyAgICAgICBpZiAoc3NwLT5pcnEg
PCAwKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiAtICAgICAgIH0KCkF0IHRo
ZSBzYW1lIHRpbWUgd2UgY2FuIHVuc2hhZG93IHRoZSBlcnJvciBjb2RlLCBpLmUuCiAgcmV0dXJu
IHNzcC0+aXJxOwoKCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
