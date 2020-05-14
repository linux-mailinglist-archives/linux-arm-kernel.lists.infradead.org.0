Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C652B1D24D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 03:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8q3o74NJ+yr0yNEPatnbUgG2Q6Wl9eSZY4mt4Fg3Jkg=; b=Zd7MZfMehyicCh
	fnPxDFirmkV19IdAeQXHivd8RUCrZSGwBd/vTR3BNMO93mP4jmG+3yxSmKl8u5Rg2Hpi2VT2mNIlP
	EndVxyPY+mxYmeFZbFrRBfXgWDrYKO0uKVbJbMugcn1dpvVdIdlAOus7YoXvPqO+eT4QDzEF5lgLx
	G5wM08z5REC7TKynjTDc2/59waxRGUvqT139Nub2f7+iuOtGzTVlkfNx3seoeN3BegCxvkzhn6Hjv
	lNgGz3PmtpBme3GDpBlrxj9gd+RMdROrub9QPlq0HvxzCxRxHkD8+eZzb9Ei21zfVvl00eVqkQI7F
	jlKlSfRS+xrQGrobYXhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2p9-0008RA-S7; Thu, 14 May 2020 01:38:11 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2ow-0008QS-55
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 01:38:01 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A007C51F;
 Thu, 14 May 2020 03:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1589420276;
 bh=N4lCU0zXsWxvmQtZ5sTeg28V0mz07vTG0n3Pl7thUAI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nHOcYkTdSgwwQsJPKR14GXEeCVquu35YFxuIuwcpmvPc0j6ZDUAjXgWCOcp0FI8iW
 8Y80lJ1EH8hq+/lfvytj/VR1y9BTsuaTKzo7vdHoulLb8d101K/hLxgMYNtZZGYZJC
 BtkBqX+AP7RYCLMs0wZhtauVlisqaw7wsWQdGwt4=
Date: Thu, 14 May 2020 04:37:50 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v2 5/6] ARM: dts: iwg20d-q7-dbcm-ca: remove unneeded
 properties in hdmi@39
Message-ID: <20200514013750.GE7425@pendragon.ideasonboard.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-6-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511110611.3142-6-ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_183758_839519_71ED6A4F 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgoKT24gTW9uLCBNYXkgMTEsIDIw
MjAgYXQgMDE6MDY6MTBQTSArMDIwMCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiBSZW1vdmUg
dGhlIGFkaSxpbnB1dC1zdHlsZSBhbmQgYWRpLGlucHV0LWp1c3RpZmljYXRpb24gcHJvcGVydGll
cyBvZgo+IGhkbWlAMzkgdG8gbWFrZSBpdCBjb21wbGlhbnQgd2l0aCB0aGUgImFkaSxhZHY3NTEx
dyIgRFQgYmluZGluZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxyaWNh
cmRvLmNhbnVlbG9AY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBMYXVyZW50IFBpbmNoYXJ0
IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+Cgo+IC0tLQo+ICBhcmNoL2FybS9i
b290L2R0cy9pd2cyMGQtcTctZGJjbS1jYS5kdHNpIHwgMiAtLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaXdnMjBk
LXE3LWRiY20tY2EuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2l3ZzIwZC1xNy1kYmNtLWNhLmR0
c2kKPiBpbmRleCBlZGUyZTBjOTk5YjEuLmUxMGY5OTI3OGM3NyAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybS9ib290L2R0cy9pd2cyMGQtcTctZGJjbS1jYS5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9v
dC9kdHMvaXdnMjBkLXE3LWRiY20tY2EuZHRzaQo+IEBAIC03Miw4ICs3Miw2IEBACj4gIAkJYWRp
LGlucHV0LWRlcHRoID0gPDg+Owo+ICAJCWFkaSxpbnB1dC1jb2xvcnNwYWNlID0gInJnYiI7Cj4g
IAkJYWRpLGlucHV0LWNsb2NrID0gIjF4IjsKPiAtCQlhZGksaW5wdXQtc3R5bGUgPSA8MT47Cj4g
LQkJYWRpLGlucHV0LWp1c3RpZmljYXRpb24gPSAiZXZlbmx5IjsKPiAgCj4gIAkJcG9ydHMgewo+
ICAJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKCi0tIApSZWdhcmRzLAoKTGF1cmVudCBQaW5jaGFy
dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
