Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9087107E55
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 13:25:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0M0i3afuEklELYe7EyIbD0gXqjPOjB4Jvjo/l9vJIw=; b=t3twupk8q2kLQQ
	j25ndy54a6+QmltS+1fYakUkEVOs6U59uapvDctePxvnQKvJTGV9e2JzZmL6y/YeaZLZl5Wx1CUga
	8Jy7Rb8Pd6W8upC6ijBSYrkbAjkVUF7hT/GP+8++XMHHzz5a9kt1/agLevh28aEMpWBVXg20qcxs+
	IQ40SEHMSAbH3UFkM8otHpo7rtZAAfdT44F2LxPUH6fUPtTAzt91i1+0USYj+sBcYfqqb4xUXWALW
	V/xQjipg2jOhBHCvd/NFSKxZCXHIUhdzVsDtV9MBMJGJ1AEdpKBTM7IhIBFBjbP+a6pv5Jfz/H6YV
	Y1i0WmDQDFjJSdMY8JgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYUTi-0002KE-PB; Sat, 23 Nov 2019 12:25:30 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYUTa-0002JS-4A
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 12:25:23 +0000
Received: by mail-lf1-x142.google.com with SMTP id a17so7502014lfi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 Nov 2019 04:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9bPAlk5H2fFBXl0/0I4i5G2Ml8jO2DAr9KJz+P/jaNM=;
 b=hMz9JSdbYfwAELa86xEHNr1O7KXvsq3+gr5CsMLffgYSX5wBrihmbcjyM160ayxp+b
 jvO9CsICpjigJ1qkaLw+WOC/Um36kx6tqeUarGxd6zg2K2jCO1IX6VgiwjvzMn4pca33
 F+Wsylt8DUg0XhXP7TB4kPMhe30T+Qy3YgvT+OmMeDh/seYThT51QvgdHC+nXIxaaimb
 V2zgALbHaiuTEByoPz435dp8Rz8SJk0SKMWKHOKV5btevBv5sRh/AzuYn4WJcO98xVSf
 I0M/6BOKane8ZrNwbsyRuS/VnyyG/Gw3164wiOtqzr+aefeozljJhkFQ3D9O1bdOgbMy
 yXVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9bPAlk5H2fFBXl0/0I4i5G2Ml8jO2DAr9KJz+P/jaNM=;
 b=T7fG7Xg+6/n9x2ClfO6qxN+CrV72Rv5XFWpJQIlucLjpKJvFZ28nPrHW4RUSaP16Wb
 yR5BKTpt46utdcGjenWkPlPHECX8wnNVpwM4XSYYC9diRH8lbhRONYThtT2oucu+TWKt
 lYsklT6BAv6DiiMqfvKV4cvs1z6AG2E50OB5S+F4uTn/KFRZxpAXRejZaWOCkLBB9aWZ
 +xJYY+KqsMK3AZHDBrn5+AzChba3b+r+kPBeBCnhNe61g9/N2VCIlquRK1rcbseW1+4n
 /gVig8OTmmtu67CeTK3OZuHAHifvWYbQkKAj2CY+56bwQ0tT91+TB+wbEIprVpa/ce/u
 dieg==
X-Gm-Message-State: APjAAAWbhKyKY8DtkdWDEMuiR5fVsvftoeZinEmKiax+IFxAZ1+VqJKL
 rVnN2BDfrt+vJT9GGdBsOCK8KU/YE01x5LZhL+U=
X-Google-Smtp-Source: APXvYqxT6NcFyrouxig79V/rPjUvKpEFe1luhwbSFTmicydLzuc/d74UY/7a8ZEjpUaytHq3g+1nOkyT7gKYrTj6kG4=
X-Received: by 2002:ac2:533c:: with SMTP id f28mr9419931lfh.12.1574511919258; 
 Sat, 23 Nov 2019 04:25:19 -0800 (PST)
MIME-Version: 1.0
References: <59793b1ae533636528942b2cec14ec68b9830fcf.1574510649.git.agx@sigxcpu.org>
In-Reply-To: <59793b1ae533636528942b2cec14ec68b9830fcf.1574510649.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 23 Nov 2019 09:25:21 -0300
Message-ID: <CAOMZO5B_RWoUA3AX=ivAbEPFMQyD+WO8v1t20gZVef7zDz2YuQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq: Add eLCDIF controller
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_042522_190744_33DA1CE6 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpPbiBTYXQsIE5vdiAyMywgMjAxOSBhdCA5OjA5IEFNIEd1aWRvIEfDvG50aGVy
IDxhZ3hAc2lneGNwdS5vcmc+IHdyb3RlOgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEuZHRzaQo+IGluZGV4IDdmOTMxOTQ1MmI1OC4uMDBhYTYzYmZkODE2IDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPiBAQCAtNDQ4LDYgKzQ0
OCwyMyBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZnNsLHNkbWEtcmFtLXNj
cmlwdC1uYW1lID0gImlteC9zZG1hL3NkbWEtaW14N2QuYmluIjsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICB9Owo+Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgbGNkaWY6IGxjZGlmQDMwMzIw
MDAwIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNs
LGlteDhtcS1sY2RpZiIsICJmc2wsaW14MjgtbGNkaWYiOwoKZnNsLGlteDhtcS1sY2RpZiBzaG91
bGQgYWxzbyBiZSBkb2N1bWVudGVkLgoKUmV2aWV3ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3Rl
dmFtQGdtYWlsLmNvbT4KClRoYW5rcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
