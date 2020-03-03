Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85626177E5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 19:18:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9iJpGVVgk65VGtYHX65qlK8BxLDwrb+K3M6HM6zA/lE=; b=jfOPcItL9arHHm
	1fYqX8G8qR3s195PQGxF37kQ88QgH7oEKPAxSAq9eRhIKmV6dxIexplkSKXLc8x/Tii96u05C+g3U
	Cjg0e1i5DbEdsCspUgeXiYOF3K24pwsc0uwhC6UWe9wkXgs7rXRNPBGe3Iewbd1HrTG3uFHfmwD1G
	Oh+5EEa/IImjhMzn1iEIMYyripaIaAW+v1qAmCYGOsIF5zGp1H5PpHVu80vwlDb918j6FFxUL2rhS
	7C2eW8gBwwV+yudh1jp+vWVGZT4MncnTldSagK0akfB02pTEEeqqfQYWY88/W2oo+IWS099WnBkZr
	coaaYOHxCF8kuACd2CNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9C7t-0001IK-3n; Tue, 03 Mar 2020 18:18:41 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9C7m-0001Hk-21; Tue, 03 Mar 2020 18:18:35 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A38CA200006;
 Tue,  3 Mar 2020 18:18:17 +0000 (UTC)
Date: Tue, 3 Mar 2020 19:18:16 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Subject: Re: [PATCH 1/2] dt-bindings: gpu: mali-bifrost: Add Rockchip PX30
 compatible
Message-ID: <20200303191816.11dbc313@xps13>
In-Reply-To: <2766954.FXckbfHlGz@diego>
References: <20200302155808.11273-1-miquel.raynal@bootlin.com>
 <2766954.FXckbfHlGz@diego>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_101834_234770_185B7D2C 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlIG9uIE1vbiwgMDIgTWFyIDIw
MjAgMTc6Mjk6MDIKKzAxMDA6Cgo+IEFtIE1vbnRhZywgMi4gTcOkcnogMjAyMCwgMTY6NTg6MDcg
Q0VUIHNjaHJpZWIgTWlxdWVsIFJheW5hbDoKPiA+IFJvY2tjaGlwIFBYMzAgU29DcyBmZWF0dXJl
IGEgQmlmcm9zdCBNYWxpIEdQVS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5h
bCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KPiA+IC0tLQo+ID4gIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9ncHUvYXJtLG1hbGktYmlmcm9zdC55YW1sIHwgMSArICAKPiAK
PiBhbHJlYWR5IGluIG1haW5saW5lIDstKQo+IAo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPWFkODQ4
ZGQ1MzM4NWI2MWYzYzJiOTRkMzQ2NmJmNzk5ZjMxMDM1YTcKPiAKPiAKCllvdSBzaG91bGQgcHJv
YmFibHkgc2V0dXAgYW4gYXV0b21hdGljIGFuc3dlciA7KQoKSSBhZG1pdCB0aGF0IEkgd3JvdGUg
dGhlc2UgcGF0Y2hlcyBzb21lIHRpbWUgYWdvIHdoZW4gaXQgd2FzIG5vdCBpbgptYWlubGluZSBh
bmQgZGlkIG5vdCBjaGVjayBiZWZvcmUgc2VuZGluZyBpdCA6JAoKQ2hlZXJzLApNaXF1w6hsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
