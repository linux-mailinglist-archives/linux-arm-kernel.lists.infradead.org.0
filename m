Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DE61BBB5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jr+60rV4aZX8leRannNnGIWXH5EoXxvVB2vlyly65mc=; b=XNV35s7OalVL8M
	mEdqjj/hGAslT5WjJPDqukoAKpktrH6NOESfYXOdkrDsJBWhZL4pj0OiHKxrFII29Lng6w4G6K2zQ
	scp1raUtU9iPjCL0DExFf7yw9VBmGazSpVUnXyeCKiIvsJOExVkfeSnIN0+CS1lY4fH8BecY7DUVb
	gHpLMsh2jgIH7ALlqKNo9K9LskbdxF2f03lu+6pm+BQnxpVXTitJSgRVBPqGCesIvCSRxomZKZjQK
	Jc7TL8F1N1ky3OPmMfp1WRuYLu8lTSSf2o6kHNeAb6j8hpRPcOAQ3m9auzP4fZv+hqliGYLbzwmhw
	KU/uNROcjpic2J8yQuJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTNdP-000052-Qf; Tue, 28 Apr 2020 10:38:39 +0000
Received: from mail-ej1-f66.google.com ([209.85.218.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTNdE-0008Vx-KF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:38:29 +0000
Received: by mail-ej1-f66.google.com with SMTP id rh22so16845248ejb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 03:38:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=QS4c9ls6yzOR+yRWTJD8hrerOuMZYga2B1YWCy646HU=;
 b=UvGAW28YoOGFZu5BoZte6O98dKuIiblhgiFgulC/q/okOaObPNJIurT4mAf8Bnr67b
 yHzysM7YX9unuAhZCCUZ5r+omZBgzs/qFTcu8KQ01Z8e4ArYCWwsfAXVq5bSL+uBt60n
 RUJJA2qhL9TFIiOT/xgxclEJzEnskIRNc8/mHUvq+pL9jQ7gHuIti1/C/EhtEywqLZ7a
 MeAr9sRI757MtUp879vytLaWJeiWtLoDdh4ajjpMhISoLbfLgQ1Hg8CJS6+LgCqdKH8v
 7RHfamFMaWdPHItIRiSLs/awYT3J7Xr7L+mtPH5UzmaAhIM0DduF4z2N5EnTaaVqUFnI
 VhHA==
X-Gm-Message-State: AGi0PuYyudhO9sjclx6juhYzuLGfWNia1SlHmKxA+IOxpR+F2r2lzkUt
 7ddOPPA/WSmsjzNb+TXC7EU=
X-Google-Smtp-Source: APiQypIJTK4SUmp8jTM+oNe7+uJOVbtyCyJrubIWc/QoIsByKo+wNj3JnrX0SttughUGYKSrljqd1w==
X-Received: by 2002:a17:906:9706:: with SMTP id
 k6mr24724371ejx.103.1588070307272; 
 Tue, 28 Apr 2020 03:38:27 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id qo12sm411994ejb.14.2020.04.28.03.38.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 Apr 2020 03:38:26 -0700 (PDT)
Date: Tue, 28 Apr 2020 12:38:24 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH 00/13] S5PV210 and Aries DTS improvements
Message-ID: <20200428103824.GF23963@kozik-lap>
References: <BN6PR04MB06601A5656CF70A4DCA7998BA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB06601A5656CF70A4DCA7998BA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_033828_663981_9A209DCB 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgMTE6MzU6NTFBTSAtMDcwMCwgSm9uYXRoYW4gQmFra2Vy
IHdyb3RlOgo+IFRoaXMgcGF0Y2hzZXQgbWFrZXMgc2V2ZXJhbCBpbXByb3ZlbWVudHMgdG8gQXJp
ZXMgZGV2aWNlcyB3aGljaCBhcmUKPiBiYXNlZCBvbiBTNVBWMjEwLiAgU2V2ZXJhbCBwdWxscyBv
biBHUElPcyB3ZXJlIGluY29ycmVjdC9ub3Qgc3BlY2lmaWVkLAo+IHNsZWVwIEdQSU8gY29uZmln
dXJhdGlvbnMgaGF2ZSBiZWVuIGFkZGVkLCBhbmQgbW9yZSBkZXZpY2VzIGhhdmUgYmVlbgo+IGFk
ZGVkLgo+IAo+IFRvdWNoaW5nIHRoZSBjb21tb24gUzVQVjIxMCBEVFNJIGFyZSB0aGUgYWRkaXRp
b24gb2YgdGhlIEFEQyBub2RlCj4gYXMgd2VsbCBhcyBmaXhlcyB0byB0aGUgRklNQyBkZWZpbml0
aW9ucyBhbmQgYSBzbGVlcCBHUElPIGhlbHBlcgo+IGFkZGVkLgo+IAo+IFRoZSBwYXRjaGVzIGhh
dmUgYmVlbiB0ZXN0ZWQgb24gYm90aCBhIEdULWk5MDAwIGFzIHdlbGwgYXMgYW4KPiBTR0gtVDk1
OVAgYW5kIGJvdGggY2FuIG5vdyBzdXNwZW5kL3Jlc3VtZSBwcm9wZXJseS4KPiAKPiBKb25hdGhh
biBCYWtrZXIgKDEyKToKPiAgIGFybTogZHRzOiBzNXB2MjEwOiBBZGQgaGVscGVyIGRlZmluZSBm
b3Igc2xlZXAgZ3BpbyBjb25maWcKPiAgIGFybTogZHRzOiBzNXB2MjEwOiBmYXNjaW5hdGU0Zzog
QWRkIHNsZWVwIEdQSU8gY29uZmlndXJhdGlvbgo+ICAgYXJtOiBkdHM6IHM1cHYyMTA6IGdhbGF4
eXM6IEFkZCBzbGVlcCBHUElPIGNvbmZpZ3VyYXRpb24KPiAgIGFybTogZHRzOiBzNXB2MjEwOiBh
cmllczogU2V0IGtlZXAtcG93ZXItaW4tc3VzcGVuZCBmb3IgU0RIQ0kxCj4gICBhcm06IGR0czog
czVwdjIxMDogYXJpZXM6IERpc2FibGUgcHVsbHMgb24gR1BJTyBpMmMgYWRhcHRlcnMKPiAgIGFy
bTogZHRzOiBzNXB2MjEwOiBhcmllczogQWRkIHN1cHBvcnQgZm9yIG1vcmUgZGV2aWNlcwo+ICAg
YXJtOiBkdHM6IHM1cHYyMTA6IGFyaWVzOiBEaXNhYmxlIHB1bGwgZm9yIHZpYnJhdG9yIGVuYSBH
UElPCj4gICBhcm06IGR0czogczVwdjIxMDogQWRkIGFuIEFEQyBub2RlCj4gICBhcm06IGR0czog
czVwdjIxMDogYXJpZXM6IEVuYWJsZSBBREMgbm9kZQo+ICAgYXJtOiBkdHM6IHM1cHYyMTA6IEFz
c2lnbiBjbG9ja3MgdG8gTU1DIGRldmljZXMKPiAgIGFybTogZHRzOiBzNXB2MjEwOiBDb3JyZWN0
IEZJTUMgZGVmaW5pdGlvbnMKPiAgIGFybTogZHRzOiBzNXB2MjEwOiBhcmllczogU2V0IE1BWDg5
OTggR1BJTyBwdWxscwo+IAo+IFBhd2XFgiBDaG1pZWwgKDEpOgo+ICAgYXJtOiBkdHM6IHM1cHYy
MTA6IGdhbGF4eXM6IEFkZCBzaTQ3MHggZm1yYWRpbwoKVGhhbmtzIGZvciB0aGUgcGF0Y2hlcywg
bmljZSB3b3JrIQoKSSBjb21tZW50ZWQgb24gc29tZSBvZiB0aGVtLiBUaGUgb3RoZXIgbG9vayBn
b29kIGJ1dCBJIHdpbGwgd2FpdCB3aXRoCmFwcGx5aW5nIGZvciB2Mi4gV2hlbiByZXNlbmRpbmcg
ZXZlcnl0aGluZywgY2hhbmdlIHRoZSBzdWJqZWN0IG9mIGVhY2gKcGF0Y2ggdG8gbWF0Y2ggc3Vi
c3lzdGVtLCBzbzoKCUFSTTogZHRzOiBzNXB2MjEwOgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
