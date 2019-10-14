Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CED3D6405
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 15:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrcbaIwpuAzBuAO68mo7UhFRjxuA2FKikEF2LDiJ+eU=; b=LpXnHDN2JgVCCF
	KlbR9zSZGxZE5BUQYkDnHpj+Xw+IA1MBpBahYgVU0GpVN4GtRj0NumLWVDJ35tT5Bi2760+sAIhNy
	G5BqLQM/nH0/fWZhcSI0Zb9nsZzo8b0DmEQF5I9yTins4JXJK7EfJctqo20NgVK3mLCc/7f448R/o
	QnX0LQ0ARkyQQkcd47UJV8uQFfEugZUwzJLnJeKtSVtobM9dllvLh9SybHmWcQY5Nv1YoDfT1/6mI
	4egHaufpTMporyRQ3CKIy/HwBZt5uziSrhNVp/H37K5InN4LMQjTwjD67HxO9UopYE7z8e0zRDhOp
	eG3jjdz1133gP6xvzHNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK0Kf-00055q-AG; Mon, 14 Oct 2019 13:24:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK0KS-00055D-LO
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 13:24:05 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECF3921835
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 13:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571059444;
 bh=m6XF4o4SsSJ4V485gjFJ25vq9Pu6PVzZfoLQRS3+ep8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YjNLUTo+t3LVgzzI3OkZol6ldaNw/9LGK07uaQQ5g1tHyRtRdE2+G/IjVXLH+lJv4
 vUNIH4zaosIrSmUs4bUkBUHaDbrFdGaE6pYJGZJAdGVoVcnyb2do/QgmaS00As2C+4
 aK3Jx1bBpCP6cs9oGkobyq1PjhRFXDMh7kbe231Q=
Received: by mail-qk1-f172.google.com with SMTP id p10so15837627qkg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 06:24:03 -0700 (PDT)
X-Gm-Message-State: APjAAAWrXR5fjTRqhMqa8yQouk8frtG4Qqaf+mIesYISUhAdDN/ORkCM
 LKZAiOGaUf6GJGa04jbeJIVoxwS11kkqP7PmKQ==
X-Google-Smtp-Source: APXvYqwFZz5r02Q8zvQ+0YwyjuVSCha6+fsX0DiB2cUKhQvltP4Evo5NpCWKG2okrETOAf6t3D5ierG7w/sOMPF08GE=
X-Received: by 2002:a37:9847:: with SMTP id a68mr30353019qke.223.1571059443085; 
 Mon, 14 Oct 2019 06:24:03 -0700 (PDT)
MIME-Version: 1.0
References: <1570025100-5634-1-git-send-email-laurentiu.palcu@nxp.com>
 <1570025100-5634-5-git-send-email-laurentiu.palcu@nxp.com>
 <20191011145042.GA15680@bogus> <20191014080327.GB14065@fsr-ub1664-121>
In-Reply-To: <20191014080327.GB14065@fsr-ub1664-121>
From: Rob Herring <robh@kernel.org>
Date: Mon, 14 Oct 2019 08:23:51 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJZHq=jDoK66bTHK+oqSvdrFh9x5a_cNe1hkFdALfs8vw@mail.gmail.com>
Message-ID: <CAL_JsqJZHq=jDoK66bTHK+oqSvdrFh9x5a_cNe1hkFdALfs8vw@mail.gmail.com>
Subject: Re: Re: [PATCH v2 4/5] dt-bindings: display: imx: add bindings for
 DCSS
To: Laurentiu Palcu <laurentiu.palcu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_062404_720961_BCDF321A 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBPY3QgMTQsIDIwMTkgYXQgMzowMyBBTSBMYXVyZW50aXUgUGFsY3UgPGxhdXJlbnRp
dS5wYWxjdUBueHAuY29tPiB3cm90ZToKPgo+IEhpIFJvYiwKPgo+IE9uIEZyaSwgT2N0IDExLCAy
MDE5IGF0IDA5OjUwOjQyQU0gLTA1MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4gOnU/d2M/P201
P14/456+P300LT8/entiPz8/cj8rP9eAdT8/P9inPz8/PyMgPz8gPz9layA/Pz8/P1c/Sj8/Pz9e
Pyg/Pz9ofT8/LT8/entiPz8/cj9aPz8/Pys/alcuPyBcP2/bindiPyA/dispPz8/P2wgPyBiPyAm
Pz8sPyY/P86+Pz8/Pz8/Pz8/Pz8/Pz8/P1c/Pz8hanggd86iP8erPyonPz8reT9ePz9eP006Pz8/
cumentatPz8/dT8/cT9reT/bindiPyA/dispPz8/P2wgPyBiPyAmPz8sPyY/PyA/Pz8gdT8/Pz/e
rj8/Pz8gP0c/Pz9oCj4KPiBPayEgTm90IHN1cmUgaG93IHRvIGFkZHJlc3MgdGhpcyB0aG91Z2gu
Li4gOikKCllvdXIgbWFpbCB3YXMgYmFzZTY0IHdoaWNoIGlkZWFsbHkgc2hvdWxkIGJlIGF2b2lk
ZWQgb24gbWFpbGxpc3RzLiBNeQpzY3JpcHRpbmcgdHJpZXMgdG8gZGVhbCB3aXRoIGl0LCBidXQg
ZmFpbGVkIG9idmlvdXNseS4gV2hhdCBJIHNhaWQKd2FzOgoKUmV2aWV3ZWQtYnk6IFJvYiBIZXJy
aW5nIDxyb2JoQGtlcm5lbC5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
