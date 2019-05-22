Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9BE2608C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8HMhscmmaavf2X5TJrX7FIY7A73uidNl59ZpmCJfrM=; b=VB8z5EB9Lk5mPZ
	qKZ17VYOwhWJYhuy/AhJ6gRc6LWSp6NqwpUCAuYtqrjR0+D/JhZrwPfiz2RHVPv3/7eOjm6OjJ0Hx
	ZNQR32whBiLfkVQGQi3ZN0I5bfiMggWXmuqMx/jeeBX0nL3jjfr3x8Y7DdUteDqv8BeJWOULcTlkk
	zsbL6YNhdtASJK9JDxVLZAgI37yimUDCWklgcmbi2Wzhv+TfNKjgEv62e4aFK/CqXYktvwNf8p6jm
	ehLoZrhDy6mvouvW7fUZw/fe8impTF2bVcWDiWo8Pu3hweHaDLrfiC1vcnEiC6JCzv4lnFGyzhwUS
	GmX4BZwXpq+K6ylVetTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNcq-0006k8-7u; Wed, 22 May 2019 09:33:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNcj-0006jl-0D
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:33:26 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hTNcf-0006MM-Fp; Wed, 22 May 2019 11:33:21 +0200
Message-ID: <1558517601.2624.32.camel@pengutronix.de>
Subject: Re: [PATCH 3/3] ARM: dts: imx6: rdu2: Limit USBH1 to Full Speed
From: Lucas Stach <l.stach@pengutronix.de>
To: Andrey Smirnov <andrew.smirnov@gmail.com>, 
 linux-arm-kernel@lists.infradead.org
Date: Wed, 22 May 2019 11:33:21 +0200
In-Reply-To: <20190522071227.31488-3-andrew.smirnov@gmail.com>
References: <20190522071227.31488-1-andrew.smirnov@gmail.com>
 <20190522071227.31488-3-andrew.smirnov@gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_023325_204245_B465FBAA 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmV5LAoKQW0gTWl0dHdvY2gsIGRlbiAyMi4wNS4yMDE5LCAwMDoxMiAtMDcwMCBzY2hy
aWViIEFuZHJleSBTbWlybm92Ogo+IENhYmxpbmcgdXNlZCB0byBjb25uZWN0IGRldmljZXMgdG8g
VVNCSDEgb24gUkRVMiBkb2VzIG5vdCBtZWV0IFVTQgo+IHNwZWMgY2FibGUgcXVhbGl0eSBhbmQg
Y2FibGUgbGVuZ3RoIHJlcXVpcmVtZW50cyB0byBvcGVyYXRlIGF0IEhpZ2gKPiBTcGVlZCwgc28g
bGltaXQgdGhlIHBvcnQgdG8gRnVsbCBTcGVlZCBvbmx5LgoKUmVhbGx5PyBJIHRob3VnaHQgdGhp
cyBpc3N1ZSBpcyBzcGVjaWZpYyB0byB0aGUgUkRVMSwgYnV0IHlvdSd2ZSBiZWVuCmxvb2tpbmcg
YXQgdGhpcyBVU0Igc3R1ZmYgZm9yIGEgbG90IGxvbmdlciB0aGFuIG1lLgoKUmVnYXJkcywKTHVj
YXMKCj4gUmVwb3J0ZWQtYnk6IENocmlzIEhlYWx5IDxjcGhlYWx5QGdtYWlsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBBbmRyZXkgU21pcm5vdiA8YW5kcmV3LnNtaXJub3ZAZ21haWwuY29tPgo+IENj
OiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+Cj4gQ2M6IEZhYmlvIEVzdGV2YW0gPGZl
c3RldmFtQGdtYWlsLmNvbT4KPiBDYzogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXgu
ZGU+Cj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51
eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gLS0tCj4gwqBhcmNoL2FybS9ib290L2R0cy9pbXg2
cWRsLXppaS1yZHUyLmR0c2kgfCAxICsKPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXppaS1yZHUyLmR0
c2kKPiBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtemlpLXJkdTIuZHRzaQo+IGluZGV4IDU0
ODRlNGI4Nzk3NS4uM2IzN2ZlNjhkMzczIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZxZGwtemlpLXJkdTIuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwt
emlpLXJkdTIuZHRzaQo+IEBAIC03NzIsNiArNzcyLDcgQEAKPiDCoCZ1c2JoMSB7Cj4gwqAJdmJ1
cy1zdXBwbHkgPSA8JnJlZ181cDB2X21haW4+Owo+IMKgCWRpc2FibGUtb3Zlci1jdXJyZW50Owo+
ICsJbWF4aW11bS1zcGVlZCA9ICJmdWxsLXNwZWVkIjsKPiDCoAlzdGF0dXMgPSAib2theSI7Cj4g
wqB9Owo+IMKgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
