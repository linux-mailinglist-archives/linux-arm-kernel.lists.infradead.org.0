Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57974185120
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 22:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6OA2jrYNuTaiLO0Gqt20MIqZk8gJc1lrBEuLie8xpY=; b=gM8ug+HTxVYBxA
	xxts2Gdn4op5L/JG6Fl1hHcxjPc7tvdrJofVL/2YoUEMy1u8E8WakSmb3VokA5sLhQDJRyKq4nwi+
	ItX3xcRaT2ZJpC+z2rT3aCDCuXEt5KvP8CnRWg5IOvFflEVaVPuTXS5ARMwXV7a7UXyuA1yu/ycpK
	3CoUolIS/sslZ1OvZePU+I645oPjTZ2CoW+q38P5h4png/+Mkr6GAYlMxVtz0Us7OFosN+oB4kx4q
	QA8X2CfsPF9XrG0TPkppPDYqI51fpQ/L1OfSqewgc9RNrUmNy8llx3nCmh4Dk49s0Yo2f/UZNUVyw
	0jrpRc4mgJhu5oq6yjRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCrq8-00064R-BS; Fri, 13 Mar 2020 21:27:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCrpz-000646-FM
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 21:27:24 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7D6F32D6;
 Fri, 13 Mar 2020 22:27:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584134841;
 bh=8poZMY3yZ6/FoJSTyQeb76xDXBHs9PcDxedIYUmrXTk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D7pb2p+JuF9dSBS2cwX4W3N474YB7Twx9kegIH4Ym5JpP9XzqN5qQyiEbaAmis1IF
 MnkiNLtwbAfhiXLOgQbpEah0Xg9MsCDmOMdF+lAvIJVo+wyQoidkxCQE4/jOqKESP+
 tiVwAhxLtbTfG+CPWMTYFLQSJzhw4dHhlyCeCK1w=
Date: Fri, 13 Mar 2020 23:27:17 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
Message-ID: <20200313212717.GO4751@pendragon.ideasonboard.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200313212012.GL4751@pendragon.ideasonboard.com>
 <OSBPR01MB35905D6D72DCBF154FCF7C88AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSBPR01MB35905D6D72DCBF154FCF7C88AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_142723_666998_3A6D0551 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUHJhYmhha2FyLAoKT24gRnJpLCBNYXIgMTMsIDIwMjAgYXQgMDk6MjU6MDFQTSArMDAwMCwg
UHJhYmhha2FyIE1haGFkZXYgTGFkIHdyb3RlOgo+IE9uIFNlbnQ6IDEzIE1hcmNoIDIwMjAgMjE6
MjAsIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4gPiBPbiBGcmksIE1hciAxMywgMjAyMCBhdCAw
OToxMjozMVBNICswMDAwLCBMYWQgUHJhYmhha2FyIHdyb3RlOgo+ID4gPiBVc2UgYXNzaWduZWQt
Y2xvY2stcmF0ZXMgdG8gc3BlY2lmeSB0aGUgY2xvY2sgcmF0ZS4gQWxzbyBtYXJrCj4gPiA+IGNs
b2NrLWZyZXF1ZW5jeSBwcm9wZXJ0eSBhcyBkZXByZWNhdGVkLgo+ID4KPiA+IEkgd291bGQgcGhy
YXNlIGl0IHRoZSBvdGhlciB3YXkgYXJvdW5kLCB0aGlzIHBhdGNoIG1haW5seSBkZXByZWNhdGVz
IGNsb2NrLQo+ID4gZnJlcXVlbmN5LCBhbmQgYXMgYSBzaWRlIGVmZmVjdCByZWNvbW1lbmRzIHVz
YWdlIG9mIGFzc2lnbmVkLWNsb2NrLXJhdGVzLgo+ID4KPiA+ICJEZXByZWNhdGUgdXNhZ2Ugb2Yg
dGhlIGNsb2NrLWZyZXF1ZW5jeSBwcm9wZXJ0bHkuIFRoZSBwcmVmZXJyZWQgbWV0aG9kCj4gPiB0
byBzZXQgY2xvY2sgcmF0ZXMgaXMgdG8gdXNlIGFzc2lnbmVkLWNsb2NrLXJhdGVzLiIKPgo+IEFn
cmVlZCB3aWxsIGRvIHRoYXQuCj4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IExhZCBQcmFiaGFrYXIg
PHByYWJoYWthci5tYWhhZGV2LWxhZC5yakBicC5yZW5lc2FzLmNvbT4KPiA+ID4gLS0tCj4gPiA+
ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvaTJjL292NTY0NS50eHQg
fCA1ICsrKy0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21lZGlhL2kyYy9vdjU2NDUudHh0Cj4gPiA+IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21lZGlhL2kyYy9vdjU2NDUudHh0Cj4gPiA+IGluZGV4IDcyYWQ5OTIu
LmU2MmZlODIgMTAwNjQ0Cj4gPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9tZWRpYS9pMmMvb3Y1NjQ1LnR4dAo+ID4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWVkaWEvaTJjL292NTY0NS50eHQKPiA+ID4gQEAgLTgsNyArOCw3IEBA
IFJlcXVpcmVkIFByb3BlcnRpZXM6Cj4gPiA+ICAtIGNvbXBhdGlibGU6IFZhbHVlIHNob3VsZCBi
ZSAib3Z0aSxvdjU2NDUiLgo+ID4gPiAgLSBjbG9ja3M6IFJlZmVyZW5jZSB0byB0aGUgeGNsayBj
bG9jay4KPiA+ID4gIC0gY2xvY2stbmFtZXM6IFNob3VsZCBiZSAieGNsayIuCj4gPiA+IC0tIGNs
b2NrLWZyZXF1ZW5jeTogRnJlcXVlbmN5IG9mIHRoZSB4Y2xrIGNsb2NrLgo+ID4gPiArLSBjbG9j
ay1mcmVxdWVuY3kgKGRlcHJlY2F0ZWQpOiBGcmVxdWVuY3kgb2YgdGhlIHhjbGsgY2xvY2suCj4g
Pgo+ID4gSSB3b3VsZCBkcm9wIHRoaXMgY29tcGxldGVseS4gRHJpdmVycyBuZWVkIHRvIGVuc3Vy
ZSBiYWNrd2FyZCBjb21wYXRpYmlsaXR5LAo+ID4gYnV0IERUIGJpbmRpbmdzIHNob3VsZCBvbmx5
IGRvY3VtZW50IHRoZSBsYXRlc3QgdmVyc2lvbiwgdGhlIGhpc3RvcnkgaXMKPiA+IGF2YWlsYWJs
ZSBpbiBnaXQuCj4gPgo+IFN1cmUgd2lsbCBkcm9wIGl0Lgo+IAo+ID4gUmV2aWV3ZWQtYnk6IExh
dXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPiA+Cj4g
PiBXaGlsZSBhdCBpdCwgY2FuIEkgZW5saXN0IHlvdSB0byBjb252ZXJ0IHRoZXNlIGJpbmRpbmdz
IHRvIHlhbWwgPyA6LSkKPiA+Cj4gU3VyZSB3aWxsIGRvIHRoZSBob25vdXJzIPCfmIosIHdpbGwg
bWFrZSBzdXJlIHlhbWwgcGF0Y2ggaXMgb250b3Agb2YgdGhpcyBwYXRjaCB0b28uCgpUaGFuayB5
b3UgOi0pCgo+ID4gPiAgLSBlbmFibGUtZ3Bpb3M6IENoaXAgZW5hYmxlIEdQSU8uIFBvbGFyaXR5
IGlzIEdQSU9fQUNUSVZFX0hJR0guIFRoaXMgY29ycmVzcG9uZHMKPiA+ID4gICAgdG8gdGhlIGhh
cmR3YXJlIHBpbiBQV0ROQiB3aGljaCBpcyBwaHlzaWNhbGx5IGFjdGl2ZSBsb3cuCj4gPiA+ICAt
IHJlc2V0LWdwaW9zOiBDaGlwIHJlc2V0IEdQSU8uIFBvbGFyaXR5IGlzIEdQSU9fQUNUSVZFX0xP
Vy4gVGhpcyBjb3JyZXNwb25kcyB0bwo+ID4gPiBAQCAtMzcsNyArMzcsOCBAQCBFeGFtcGxlOgo+
ID4gPgo+ID4gPiAgY2xvY2tzID0gPCZjbGtzIDIwMD47Cj4gPiA+ICBjbG9jay1uYW1lcyA9ICJ4
Y2xrIjsKPiA+ID4gLWNsb2NrLWZyZXF1ZW5jeSA9IDwyNDAwMDAwMD47Cj4gPiA+ICthc3NpZ25l
ZC1jbG9ja3MgPSA8JmNsa3MgMjAwPjsKPiA+ID4gK2Fzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDI0
MDAwMDAwPjsKPiA+ID4KPiA+ID4gIHZkZGRvLXN1cHBseSA9IDwmY2FtZXJhX2RvdmRkXzF2OD47
Cj4gPiA+ICB2ZGRhLXN1cHBseSA9IDwmY2FtZXJhX2F2ZGRfMnY4PjsKCi0tIApSZWdhcmRzLAoK
TGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
