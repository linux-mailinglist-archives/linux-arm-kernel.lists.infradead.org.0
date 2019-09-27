Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F25D5C0946
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 18:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqudCP59OzfeuQl1FNhJUUmFyWrZdFKrivhUeCPxdUg=; b=VNMkDlat6m2ttc
	OhEnRM1VWl5k/VrCMjj2QtiEZ5PKKipauymdK48y6Vj6ZAEtrP1/GdGEcKjyksmMT5Yx0PLgY9tL3
	jKVGmh3/vhiOUvdBTl6w4V6ilsqx5gB0wIXXhIe8CmQF6PAd7dA2bm/cjI6toCJeqkINdqXvPsj+Q
	YEy/zkWO7p70VzC4LTM5BGdCW4852DjYTv4Sh7lNFg1diZG7F2hDV7MwbEUHMRxIafvM6YOTNSFUj
	3L9e9HpnJpgQVlSw8p1Z6NrVX1d0+j/y0xmw1nbvnt8kiWD05/mU+WrKCdFrr8dTwLoVmi7Esv6Be
	tP5l4Q7ExOVk2iPo3vLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDsrK-00010y-Mu; Fri, 27 Sep 2019 16:12:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDsr9-00010B-0Q; Fri, 27 Sep 2019 16:12:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id s1so3749503pgv.8;
 Fri, 27 Sep 2019 09:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:thread-topic:thread-index:date:message-id
 :references:in-reply-to:accept-language:content-language
 :content-transfer-encoding:mime-version;
 bh=BkVG3iqmCYH0eeVp/xh+5XrL/M0KG001eUUCkmNI95A=;
 b=e/COpqTQALXS/QFYGHR1MkEudE13Jo0gu/GoimIqBLcFoQENfvDpbpnGH6rkcPSnRK
 X+0JmFgBGbYt/klH5Zl5tYgSwttlfa07Ae5vQeQOhJ93uslS/kApiYjBJFw9PcZp45QL
 oZsO4N4MwNcWs36Od/VGYu8ZoPZnEE6ceVxX5aYe9U2pDDKNoakb+nlQ+Mf/K+GabJcK
 0H7H9VIYfKPbP2iwwpMCCeHhBVTBYK1aSjwW9QTk7RBopSXucwgbbrSwUGGPKjN36ZeJ
 wAfdO4ExHw2qwAzUOC4diHPm7MvNIXFw0EmQRzt/tu9/PTAXiQEPE0DEhY1bVi8rrLkN
 78oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
 :date:message-id:references:in-reply-to:accept-language
 :content-language:content-transfer-encoding:mime-version;
 bh=BkVG3iqmCYH0eeVp/xh+5XrL/M0KG001eUUCkmNI95A=;
 b=p2LvhHpS+nQApQSIUafL5H64MHxhAufy8X6jCRC0bBdA5tfrj3J9gvyAJztwRJFu3w
 fqmZInPcp95x9mqDDmnEwFMKT87m11Rq6xroaxdqMA4sKL58EfAgv8+IKk6DJ33zn9wY
 iOHvnnbi9pwX/FfBiW5Aysx3kgOAgBbhUoFDqceqstxhfaYA+AesBfzEfE2ja5yI8tSd
 G1YCrKYooL0VMTnJBezgohiww4qh11qEMORsap25esWssp/YsQm4BJESjhYGZaMcHfCZ
 rBxDNZjBn/TswyxG/dTMubxTdiLLxuECJah+txinLevMyBQxEFOzX/dFHSWLQz6P2CAn
 qOAQ==
X-Gm-Message-State: APjAAAV9RTqMVnGxoxlD2wOhqoBW9pkd0VcCRSnC1SPUu+f3MBxVPBcY
 YjX+cDWJof3hb/lTCltO9vA=
X-Google-Smtp-Source: APXvYqzkAgoVkc6rj9y4WlIo7pSMPSSyceNGsbwh/2NjqKHcUSmCCNwo+nge9m/SUn9OJleP/CpFLQ==
X-Received: by 2002:a65:4002:: with SMTP id f2mr10165853pgp.447.1569600749847; 
 Fri, 27 Sep 2019 09:12:29 -0700 (PDT)
Received: from SL2P216MB0105.KORP216.PROD.OUTLOOK.COM ([2603:1046:100:22::5])
 by smtp.gmail.com with ESMTPSA id
 64sm3894470pfx.31.2019.09.27.09.12.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Sep 2019 09:12:28 -0700 (PDT)
From: Jingoo Han <jingoohan1@gmail.com>
To: Rob Herring <robh@kernel.org>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 06/11] PCI: of: Add inbound resource parsing to helpers
Thread-Topic: [PATCH 06/11] PCI: of: Add inbound resource parsing to helpers
Thread-Index: AQHVcyGPS+dm5x72Oke0UZO8SHhXHqc/tmMt
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Fri, 27 Sep 2019 16:12:20 +0000
Message-ID: <SL2P216MB0105248CAB7433BEB727E94CAA810@SL2P216MB0105.KORP216.PROD.OUTLOOK.COM>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-7-robh@kernel.org>
In-Reply-To: <20190924214630.12817-7-robh@kernel.org>
Accept-Language: ko-KR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_091231_074798_EF697791 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jingoohan1[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jingoohan1[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Simon Horman <horms@verge.net.au>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 "rfi@lists.rocketboards.org" <rfi@lists.rocketboards.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Han Jingoo <jingoohan1@gmail.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCu+7vz4gT24gOS8yNC8xOSwgNTo0NiBQTSwgUm9iIEhlcnJpbmcgd3JvdGU6DQo+DQo+IEV4
dGVuZCBkZXZtX29mX3BjaV9nZXRfaG9zdF9icmlkZ2VfcmVzb3VyY2VzKCkgYW5kDQo+IHBjaV9w
YXJzZV9yZXF1ZXN0X29mX3BjaV9yYW5nZXMoKSBoZWxwZXJzIHRvIGFsc28gcGFyc2UgdGhlIGlu
Ym91bmQNCj4gYWRkcmVzc2VzIGZyb20gRFQgJ2RtYS1yYW5nZXMnIGFuZCBwb3B1bGF0ZSBhIHJl
c291cmNlIGxpc3Qgd2l0aCB0aGUNCj4gdHJhbnNsYXRlZCBhZGRyZXNzZXMuIFRoaXMgd2lsbCBo
ZWxwIGVuc3VyZSAnZG1hLXJhbmdlcycgaXMgYWx3YXlzDQo+IHBhcnNlZCBpbiBhIGNvbnNpc3Rl
bnQgd2F5Lg0KPg0KPiBDYzogSmluZ29vIEhhbiA8amluZ29vaGFuMUBnbWFpbC5jb20+DQoNCkZv
ciAvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWhvc3QuYywNCg0K
QWNrZWQtYnk6IEppbmdvbyBIYW4gPGppbmdvb2hhbjFAZ21haWwuY29tPg0KDQpCZXN0IHJlZ2Fy
ZHMsDQpKaW5nb28gSGFuDQoNCj4gQ2M6IEd1c3Rhdm8gUGltZW50ZWwgPGd1c3Rhdm8ucGltZW50
ZWxAc3lub3BzeXMuY29tPg0KPiBDYzogTG9yZW56byBQaWVyYWxpc2kgPGxvcmVuem8ucGllcmFs
aXNpQGFybS5jb20+DQo+IENjOiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29tPg0K
PiBDYzogVGhvbWFzIFBldGF6em9uaSA8dGhvbWFzLnBldGF6em9uaUBib290bGluLmNvbT4NCj4g
Q2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+DQo+IENjOiBMaW51cyBXYWxsZWlqIDxs
aW51cy53YWxsZWlqQGxpbmFyby5vcmc+DQo+IENjOiBUb2FuIExlIDx0b2FuQG9zLmFtcGVyZWNv
bXB1dGluZy5jb20+DQo+IENjOiBMZXkgRm9vbiBUYW4gPGxmdGFuQGFsdGVyYS5jb20+DQo+IENj
OiBUb20gSm9zZXBoIDx0am9zZXBoQGNhZGVuY2UuY29tPg0KPiBDYzogUmF5IEp1aSA8cmp1aUBi
cm9hZGNvbS5jb20+DQo+IENjOiBTY290dCBCcmFuZGVuIDxzYnJhbmRlbkBicm9hZGNvbS5jb20+
DQo+IENjOiBiY20ta2VybmVsLWZlZWRiYWNrLWxpc3RAYnJvYWRjb20uY29tDQo+IENjOiBSeWRl
ciBMZWUgPHJ5ZGVyLmxlZUBtZWRpYXRlay5jb20+DQo+IENjOiBLYXJ0aGlrZXlhbiBNaXRyYW4g
PG0ua2FydGhpa2V5YW5AbW9iaXZlaWwuY28uaW4+DQo+IENjOiBIb3UgWmhpcWlhbmcgPFpoaXFp
YW5nLkhvdUBueHAuY29tPg0KPiBDYzogU2ltb24gSG9ybWFuIDxob3Jtc0B2ZXJnZS5uZXQuYXU+
DQo+IENjOiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4NCj4gQ2M6IEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+DQo+IENjOiBNaWNoYWwgU2ltZWsgPG1pY2hhbC5z
aW1la0B4aWxpbnguY29tPg0KPiBDYzogcmZpQGxpc3RzLnJvY2tldGJvYXJkcy5vcmcNCj4gQ2M6
IGxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gQ2M6IGxpbnV4LXJlbmVzYXMt
c29jQHZnZXIua2VybmVsLm9yZw0KPiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZw0KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPg0KPiAt
LS0NCj4gIC4uLi9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWhvc3QuYyB8ICAz
ICstDQoNCi4uLi4NCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kZXNpZ253YXJlLWhvc3QuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUt
ZGVzaWdud2FyZS1ob3N0LmMNCj4gaW5kZXggZjkzMjUyZDBkYTViLi4wNzQzYWU2NGJiMGYgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1o
b3N0LmMNCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJl
LWhvc3QuYw0KPiBAQCAtMzQyLDcgKzM0Miw4IEBAIGludCBkd19wY2llX2hvc3RfaW5pdChzdHJ1
Y3QgcGNpZV9wb3J0ICpwcCkNCj4gIAkJcmV0dXJuIC1FTk9NRU07DQo+ICANCj4gIAlyZXQgPSBk
ZXZtX29mX3BjaV9nZXRfaG9zdF9icmlkZ2VfcmVzb3VyY2VzKGRldiwgMCwgMHhmZiwNCj4gLQkJ
CQkJJmJyaWRnZS0+d2luZG93cywgJnBwLT5pb19iYXNlKTsNCj4gKwkJCQkJJmJyaWRnZS0+d2lu
ZG93cywgJmJyaWRnZS0+ZG1hX3JhbmdlcywNCj4gKwkJCQkJJnBwLT5pb19iYXNlKTsNCj4gIAlp
ZiAocmV0KQ0KPiAgCQlyZXR1cm4gcmV0Ow0KIA0KLi4uLg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
