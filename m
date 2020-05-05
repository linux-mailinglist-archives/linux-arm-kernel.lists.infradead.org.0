Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E23F31C4CFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oI1eOfnfXRJC9tAaMqem4BK8jC7Gmbs4eVNcJx1Piq0=; b=Rj+O+rzjQfXYJw
	i3hwlRxF6Ks+ANtSbVd5COy5t6WlXD8wiNYxxBrXDNSirXGqZJO4V4SDMAmpbxqyEUIbqJwqhmJjH
	b2ghKyBm5NlFgN05za9Y0JE5X/TLjw3oZynGrgXoHnmU/1fT/XHOQzKgBd2IXZ5fO6dTx4DYryxiy
	hOueMARUtwNlUEhUowu7Nr56kAoEUT3WCbPd3vtBUxRcRNM/emQn1fIDGlcO2l26p1M8ap9G9huVD
	GCS50ASF8y57zrD/tPl9wR59w+MCyIJ4D1uC81AJ5esukTvfIUiNpJ9cEs1Ow24Cv00eyDzJEb7zB
	4NeK9LExCPy5pr8D00aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVosZ-0000Kn-Sm; Tue, 05 May 2020 04:08:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVosO-0000JY-Lt; Tue, 05 May 2020 04:08:13 +0000
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
 [209.85.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E8CE2075E;
 Tue,  5 May 2020 04:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588651690;
 bh=uzzMCgqE/O5IIYjUlJGPkxkNrxePxpFGbx62v87B1yk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BN6Cy/3HpCwbAGqGdvC+qqnnmWcpBeTMOV+avy7c5MqADF8o2RkgcRkJzIQXdsCsk
 1Afk3jIt/KQM3TnQcStiKfqzuLsewX65wxQohWJds/+9oXyCCJshgXhqgUpXBb3dvp
 Pj9E/11iNOGPIQykmHB/KEKg0M4b5I2GMOZkNt/o=
Received: by mail-ot1-f53.google.com with SMTP id g19so573527otk.5;
 Mon, 04 May 2020 21:08:10 -0700 (PDT)
X-Gm-Message-State: AGi0PubU+SP5SF8IO2yFaAdilkn5SRvXTWArqDfvJIGY+ELZxAch16C/
 G+3Fd5z/9KfSmcVFkTYCDP9wZ3GnlNQ04AIhaA==
X-Google-Smtp-Source: APiQypKr0Hhrl0+e44U31hazXs0o4bScaIuGYf4nCgkUWwDdJ4zYt2nRLPemlwjIE7S1TGeNHXWRAj+I7RpOjlh+8dk=
X-Received: by 2002:a9d:7d85:: with SMTP id j5mr690540otn.107.1588651689440;
 Mon, 04 May 2020 21:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <967df5c3303b478b76199d4379fe40f5094f3f9b.1588584538.git.mchehab+huawei@kernel.org>
 <20200504174522.GA3383@ravnborg.org>
 <20200504175553.jdm7a7aabloevxba@pengutronix.de>
In-Reply-To: <20200504175553.jdm7a7aabloevxba@pengutronix.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 4 May 2020 23:07:57 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJuRrhEtt5uxaQ=7WvDKiF_2v025GiYUvrrFE5jxBr-Xg@mail.gmail.com>
Message-ID: <CAL_JsqJuRrhEtt5uxaQ=7WvDKiF_2v025GiYUvrrFE5jxBr-Xg@mail.gmail.com>
Subject: Re: [PATCH] docs: dt: fix broken links due to txt->yaml renames
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_210812_759554_D5688D5A 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 Olivier Moysan <olivier.moysan@st.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sandy Huang <hjc@rock-chips.com>, devicetree@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Jyri Sarha <jsarha@ti.com>,
 Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgNCwgMjAyMCBhdCAxMjo1NiBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IEhpIFNhbSwKPgo+IE9uIE1vbiwg
TWF5IDA0LCAyMDIwIGF0IDA3OjQ1OjIyUE0gKzAyMDAsIFNhbSBSYXZuYm9yZyB3cm90ZToKPiA+
IE9uIE1vbiwgTWF5IDA0LCAyMDIwIGF0IDExOjMwOjIwQU0gKzAyMDAsIE1hdXJvIENhcnZhbGhv
IENoZWhhYiB3cm90ZToKPiA+ID4gVGhlcmUgYXJlIHNvbWUgbmV3IGJyb2tlbiBkb2MgbGlua3Mg
ZHVlIHRvIHlhbWwgcmVuYW1lcwo+ID4gPiBhdCBEVC4gRGV2ZWxvcGVycyBzaG91bGQgcmVhbGx5
IHJ1bjoKPiA+ID4KPiA+ID4gICAgIC4vc2NyaXB0cy9kb2N1bWVudGF0aW9uLWZpbGUtcmVmLWNo
ZWNrCj4gPiA+Cj4gPiA+IGluIG9yZGVyIHRvIHNvbHZlIHRob3NlIGlzc3VlcyB3aGlsZSBzdWJt
aXR0aW5nIHBhdGNoZXMuCj4gPiBXb3VsZCBsb3ZlIGlmIHNvbWUgYm90IGNvdWxkIGRvIHRoaXMg
Zm9yIG1lIG9uIGFueSBwYXRjaGVzIHRoYXQgY3JlYXRlcwo+ID4gLnlhbWwgZmlsZXMgb3Igc28u
Cj4gPiBJIGtub3cgSSB3aWxsIGZvcmdldCB0aGlzIGFuZCBpdCBjYW4gYmUgYXV0b21hdGVkLgo+
ID4gSWYgSSBnZXQgYSBib3QgbWFpbCB0aGF0IG15IHBhdGNoIHdvdWxkIGJyb2tlIGEgbGluayBJ
IHdvdWxkCj4gPiBoYXZlIGl0IGZpeGVkIGJlZm9yZSBpdCBoaXRzIGFueSB0cmVlLgoKSSBjYW4g
cHJvYmFibHkgYWRkIHRoaXMgdG8gd2hhdCBJJ20gYWxyZWFkeSBjaGVja2luZy4gTm90IGNvbXBs
ZXRlbHkKYXV0b21hdGVkIHRob3VnaCBhcyBpdCBkZXBlbmRzIG9uIG1lIHRvIHJldmlldyBiZWZv
cmUgc2VuZGluZy4KCj4gV2hhdCBhYm91dCBhZGRpbmcgYSBjaGVjayB0byBjaGVja19wYXRjaD8K
ClRoYXQgd291bGQgYmUgdGhlIGJlc3Qgd2F5IHRvIGdldCBzdWJtaXR0ZXJzIHRvIGRvIHRoaXMu
CgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
