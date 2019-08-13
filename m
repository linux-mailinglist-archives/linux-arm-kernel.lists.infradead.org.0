Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0108C38F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5W5RgeQacqGU67ZWOBZFqXzdJv7mkeGx3+zfZkshjw=; b=URMP2vqoYrtw3H
	Z8PwdDybcMKDpbplyAj0sSQPcZiQ1cGP+jFZidw+fTRvx0tIfGiVHJYeAZp2cp+83fX/4w45CHfmz
	ErUF7ttjK1wRUEjh+fPdfOEEkyrnYHsppJOkDqCUZWlo75G7i5QmDmfNvSGgk26MEeseTyqDjYe5J
	Yk2SJkCRi2Qw8fnJxaCMpKrkhuTahVX/fgX9V7Xnm9InscPp405nIa5BY/8ykHBqYNb8WKx/4/U13
	zsEekKwM6pNvQfM9u34fEykrpO4u+MVeW6kdsayeev/+sUbprpU8lvU2KMjJWjXBPayveNxJ4m9gJ
	NZWClUEUB/g0KMFe27lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxeFb-0005HJ-R9; Tue, 13 Aug 2019 21:22:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeFQ-0005Ga-Ps
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 21:22:29 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5928320665
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 21:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565731348;
 bh=61BEBiism8+ah6KfYnPIAoueUmImP8BoQp3cWp1WYxw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QO927A/DHs15dKgl0uKA8E/PQY35yt2Fo1OFYfRmf998P122pPT5lvN4KSBMGd4sM
 XEaopRMIrtZESspUSyXgCBciNM/mvRbOqVtaLvj030AuZRit3cEVm7YYH6AGG3pYMK
 Ri24fFbSGjzGbbGIUswMvcQNC80RaWVAunXzAklM=
Received: by mail-qt1-f174.google.com with SMTP id l9so107853089qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 14:22:28 -0700 (PDT)
X-Gm-Message-State: APjAAAUll9s9xn0j+nkpfEAw+LSdAziYfQ7UopptF0/aahcS45v7WrhR
 0HQwCz0IlDFsEp2U3RILlkybeARR+RZxLQcNUQ==
X-Google-Smtp-Source: APXvYqxSBfgtU0Qq0DmuHIKF4215omaq3x32du27czWIrPeuK1YLiDC7YDd/MNctQx5C2gGeVR82JMJ4pAiB4fPkMXY=
X-Received: by 2002:ac8:7593:: with SMTP id s19mr27846131qtq.136.1565731347578; 
 Tue, 13 Aug 2019 14:22:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190813125147.29605-1-dafna.hirschfeld@collabora.com>
 <20190813125147.29605-2-dafna.hirschfeld@collabora.com>
In-Reply-To: <20190813125147.29605-2-dafna.hirschfeld@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 15:22:16 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJxQu1CYG3ZTFDME13cUwWgCt7hkQg41bdJKvY27JcCZQ@mail.gmail.com>
Message-ID: <CAL_JsqJxQu1CYG3ZTFDME13cUwWgCt7hkQg41bdJKvY27JcCZQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: imx: add imx8mq nitrogen support
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_142228_860099_DC040D19 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 Gary Bisson <gary.bisson@boundarydevices.com>,
 Sascha Hauer <kernel@pengutronix.de>, kernel@collabora.com,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMTMsIDIwMTkgYXQgNjo1MSBBTSBEYWZuYSBIaXJzY2hmZWxkCjxkYWZuYS5o
aXJzY2hmZWxkQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gRnJvbTogR2FyeSBCaXNzb24gPGdh
cnkuYmlzc29uQGJvdW5kYXJ5ZGV2aWNlcy5jb20+Cj4KPiBUaGUgTml0cm9nZW44TSBpcyBhbiBB
Uk0gYmFzZWQgc2luZ2xlIGJvYXJkIGNvbXB1dGVyIChTQkMpCj4gZGVzaWduZWQgdG8gbGV2ZXJh
Z2UgdGhlIGZ1bGwgY2FwYWJpbGl0aWVzIG9mIE5YUOKAmXMgaS5NWDhNCj4gUXVhZCBwcm9jZXNz
b3IuCj4KPiBTaWduZWQtb2ZmLWJ5OiBHYXJ5IEJpc3NvbiA8Z2FyeS5iaXNzb25AYm91bmRhcnlk
ZXZpY2VzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBUcm95IEtpc2t5IDx0cm95Lmtpc2t5QGJvdW5k
YXJ5ZGV2aWNlcy5jb20+Cj4gW0RhZm5hOiBwb3J0aW5nIHZlbmRvcidzIGNvZGUgdG8gbWFpbmxp
bmVdCj4gU2lnbmVkLW9mZi1ieTogRGFmbmEgSGlyc2NoZmVsZCA8ZGFmbmEuaGlyc2NoZmVsZEBj
b2xsYWJvcmEuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL2ZzbC55YW1sIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKUmV2
aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
