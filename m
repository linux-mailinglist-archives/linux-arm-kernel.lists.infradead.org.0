Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F41C1DD2AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 18:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stpOWFkX2dOShYwll9RN8b38mxAsf+8MhkKZN16rEPk=; b=u451We22mxoJAQ
	ih6EW0fJqMMe/z70CUqkcXFuK81KOLypJh43YYI+gXKU6uVpemAT4ifJat7V9fuaF0bSVIohsGvhR
	LTfAZUMPZ9+G3/bFRWmbMgBHHK/SY2QGRnmljLNk4xGMqGILvmokIHzaEbNqGNWGjElSmx3izZY1n
	gGL0MCDaVyzc/voIReFmd/EXBPlOB8uupM+xbzUcCVYiU6mFhfoozHqNkDd/jaRpntbzpRZyWvflx
	jCz5ENBqTPwBjJw/cI8u3HPafrBMr8W5PaPAhTgYatTmhAbwfylq9UictB5jPxR6KCePWNSirvAlb
	hXjsZ0KjHpiONS7wnspw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnf6-0006fT-3p; Thu, 21 May 2020 16:03:12 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbneq-0006eb-9w
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 16:02:57 +0000
Received: by mail-io1-xd42.google.com with SMTP id x5so7984937ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 09:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FvB3nemWpSRg2EVLTdUggECQqohB5chkMGgTHaWJIMs=;
 b=oYBwUI7y72PnHahWzhW3tqjDl32RaJqIohkHHw3ioNmfCmgbGEjbzDg8cTFC0i6Cm0
 cAWBVydGkcbeeGMLBYVvqood/bdkDIdVJHgb2Lzllb7b0qQFKUUN2mKxiLYXVHXEqlS4
 d2F0l+UEnkOvA4dBmCiOPyUgR/TuiEwI2rFgPUVHRM9fqdt0OPZ3slRhrq732ERX+bXo
 hh9rHapYQq/Y4TqyO5L6PFheAB/IaU58A2N3sXzCLc2Kf0TUSXGfjBvnRtWe4T1Au/Rf
 7afUnUwxTUXYH+7arQhL1icKoDDaWiF8PlewYsDBjF1rGVb/mjCZh5d9lfWMxPw3KUdo
 uWRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FvB3nemWpSRg2EVLTdUggECQqohB5chkMGgTHaWJIMs=;
 b=ge/aAut+FUr0/POLSk6pugoBDnZtqk2x/M2+OpPlZF9GoBEJsLmloQEGpFpVsaOGM2
 noNupFBXm7HTi3a2FdZsSDAoXtl3c684C0pZRPxuDuhpyp1yTFkmVWhkIoNVkt+EKFfE
 W3MHn1jvMmS7TZFECUBh9wVg7kPAzOyIvxWI4QF1efRnTtJK2JniKs0cscR7hPQeO6fv
 4ItKWXSHypo77tCo/2Dv5AOZtTPAH7mo37A6dPwQiB5yA3XTazcnXyFBf3ZGlPxtBX6I
 QVgmLKHjPjunjDO1gDapHkVSiw3AVkjBG0UkKz1a1L5dAAUHcdwHqNaGeqUVmQgFkJK5
 29KA==
X-Gm-Message-State: AOAM530z8oAocCWOlsnBLUE3cliN3d5C/K00ThZCPZwqQq53lz5lZWAv
 hF/Npco7MPhcTIvUzGZRmFO2iDf+BJaid350zI4QLbHC
X-Google-Smtp-Source: ABdhPJywF8W6dMwOjSrT7p/OY7kY9xXZeMvErBWRP/H0P/gbuIavWzR5KrdTLDllpBnwoRty9ILYpV3zNEa3kNesRvY=
X-Received: by 2002:a5d:9dc5:: with SMTP id 5mr7827124ioo.92.1590076974760;
 Thu, 21 May 2020 09:02:54 -0700 (PDT)
MIME-Version: 1.0
References: <1587999532-30006-1-git-send-email-abel.vesa@nxp.com>
 <0d301ed303faea4895d30b682133ec5c9d44bd8b.camel@pengutronix.de>
 <AM6PR04MB504745F6EB1FB17F6DBDD9A387AF0@AM6PR04MB5047.eurprd04.prod.outlook.com>
 <97aa62e8aaf8fa1c462c7db117fca9b6ea9bfec0.camel@pengutronix.de>
 <CAJ+vNU3oMSpbysJ+BXyGGFknZs6BHH6hZ_qLpnsxmSBJ1Log7A@mail.gmail.com>
In-Reply-To: <CAJ+vNU3oMSpbysJ+BXyGGFknZs6BHH6hZ_qLpnsxmSBJ1Log7A@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 21 May 2020 11:02:43 -0500
Message-ID: <CAHCN7x+GeC0TqGUAASP_cDCMw-ajZJAncqurvdQzrGgg72bFHw@mail.gmail.com>
Subject: Re: [PATCH] soc: imx: Add power domain driver support for i.mx8m
 family
To: Tim Harvey <tharvey@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_090256_341789_BEC5339C 
X-CRM114-Status: GOOD (  36.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMjEsIDIwMjAgYXQgMTA6NTYgQU0gVGltIEhhcnZleSA8dGhhcnZleUBnYXRl
d29ya3MuY29tPiB3cm90ZToKPgo+IE9uIE1vbiwgTWF5IDQsIDIwMjAgYXQgMjoxOSBBTSBMdWNh
cyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPgo+ID4gQW0gTW9udGFn
LCBkZW4gMjcuMDQuMjAyMCwgMTU6MzcgKzAwMDAgc2NocmllYiBKYWNreSBCYWk6Cj4gPiA+ID4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4gPiBGcm9tOiBMdWNhcyBTdGFjaCA8bC5z
dGFjaEBwZW5ndXRyb25peC5kZT4KPiA+ID4gPiBTZW50OiBNb25kYXksIEFwcmlsIDI3LCAyMDIw
IDExOjExIFBNCj4gPiA+ID4gVG86IEFiZWwgVmVzYSA8YWJlbC52ZXNhQG54cC5jb20+OyBKYWNr
eSBCYWkgPHBpbmcuYmFpQG54cC5jb20+OyBTaGF3bgo+ID4gPiA+IEd1byA8c2hhd25ndW9Aa2Vy
bmVsLm9yZz47IFNhc2NoYSBIYXVlciA8a2VybmVsQHBlbmd1dHJvbml4LmRlPjsgTGlhbQo+ID4g
PiA+IEdpcmR3b29kIDxsZ2lyZHdvb2RAZ21haWwuY29tPjsgTWFyayBCcm93biA8YnJvb25pZUBr
ZXJuZWwub3JnPgo+ID4gPiA+IENjOiBBaXNoZW5nIERvbmcgPGFpc2hlbmcuZG9uZ0BueHAuY29t
PjsgZGwtbGludXgtaW14Cj4gPiA+ID4gPGxpbnV4LWlteEBueHAuY29tPjsgbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBMaW51eCBLZXJuZWwKPiA+ID4gPiBNYWlsaW5nIExp
c3QgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+Cj4gPiA+ID4gU3ViamVjdDogUmU6IFtQ
QVRDSF0gc29jOiBpbXg6IEFkZCBwb3dlciBkb21haW4gZHJpdmVyIHN1cHBvcnQgZm9yIGkubXg4
bQo+ID4gPiA+IGZhbWlseQo+ID4gPiA+Cj4gPiA+ID4gQW0gTW9udGFnLCBkZW4gMjcuMDQuMjAy
MCwgMTc6NTggKzAzMDAgc2NocmllYiBBYmVsIFZlc2E6Cj4gPiA+ID4gPiBGcm9tOiBKYWNreSBC
YWkgPHBpbmcuYmFpQG54cC5jb20+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhlIGkuTVg4TSBmYW1p
bHkgaXMgYSBzZXQgb2YgTlhQIHByb2R1Y3QgZm9jdXMgb24gZGVsaXZlcmluZyB0aGUKPiA+ID4g
PiA+IGxhdGVzdCBhbmQgZ3JlYXRlc3QgdmlkZW8gYW5kIGF1ZGlvIGV4cGVyaWVuY2UgY29tYmlu
aW5nCj4gPiA+ID4gPiBzdGF0ZS1vZi10aGUtYXJ0IG1lZGlhLXNwZWNpZmljIGZlYXR1cmVzIHdp
dGggaGlnaC1wZXJmb3JtYW5jZQo+ID4gPiA+ID4gcHJvY2Vzc2luZyB3aGlsZSBvcHRpbWl6ZWQg
Zm9yIGxvd2VzdCBwb3dlciBjb25zdW1wdGlvbi4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBpLk1YOE1R
LCBpLk1YOE1NLCBpLk1YOE1OLCBldmVuIHRoZSBmdXJ0dXJlIGkuTVg4TVAgYXJlIGFsbCBiZWxv
bmcgdG8KPiA+ID4gPiA+IHRoaXMgZmFtaWx5LiBBIEdQQyBtb2R1bGUgaXMgdXNlZCB0byBtYW5h
Z2UgYWxsIHRoZSBQVSBwb3dlciBkb21haW4KPiA+ID4gPiA+IG9uL29mZi4gQnV0IHRoZSBzaXR1
YXRpb24gaXMgdGhhdCB0aGUgbnVtYmVyIG9mIHBvd2VyIGRvbWFpbnMgJiB0aGUKPiA+ID4gPiA+
IHBvd2VyIHVwIHNlcXVlbmNlIGhhcyBzaWduaWZpY2F0ZSBkaWZmZXJlbmNlIG9uIHRob3NlIFNv
Q3MuIEV2ZW4gb24KPiA+ID4gPiA+IHRoZSBzYW1lIFNvQy4gVGhlIHBvd2VyIHVwIHNlcXVlbmNl
IHN0aWxsIGhhcyBiaWcgZGlmZmVyZW5jZS4gSXQgbWFrZXMKPiA+ID4gPiA+IHVzIGhhcmQgdG8g
cmV1c2UgdGhlIEdQQ3YyIGRyaXZlciB0byBjb3ZlciB0aGUgd2hvbGUgaS5NWDhNIGZhbWlseS4K
PiA+ID4gPiA+IEVhY2ggdGltZSBhIG5ldyBTb0MgaXMgc3VwcG9ydGVkIGluIHRoZSBtYWlubGlu
ZSBrZXJuZWwsIHdlIG5lZWQgdG8KPiA+ID4gPiA+IG1vZGlmeSB0aGUgR1BDdjIgZHJpdmVyIHRv
IHN1cHBvcnQgaXQuIFdlIG5lZWQgdG8gYWRkIG9yIG1vZGlmeQo+ID4gPiA+ID4gaHVuZHJlZCBs
aW5lcyBvZiBjb2RlIGluIHdvcnN0IGNhc2UuCj4gPiA+ID4gPiBJdCBpcyBhIGJhZCBwcmFjdGlj
ZSBmb3IgdGhlIGRyaXZlciBtYWludGFpbmFiaWxpdHkuCj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhp
cyBkcml2ZXIgYWRkIGEgbW9yZSBnZW5lcmljIHBvd2VyIGRvbWFpbiBkcml2ZXIgdGhhdCB0aGUg
YWN0dWFsCj4gPiA+ID4gPiBwb3dlciBvbi9vZmYgaXMgZG9uZSBieSBURi1BIGNvZGUuIHRoZSBh
YnN0cmFjdGlvbiBnaXZlIHVzIHRoZQo+ID4gPiA+ID4gcG9zc2liaWxpdHkgdGhhdCB1c2luZyBv
bmUgZHJpdmVyIHRvIGNvdmVyIHRoZSB3aG9sZSBpLk1YOE0gZmFtaWx5IGluCj4gPiA+ID4gPiBr
ZXJuZWwgc2lkZS4KPiA+ID4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBBZ2Fpbjogd2hhdCBkb2VzIHRo
aXMgZHJpdmVyIGJyaW5nIHRvIHRoZSB0YWJsZSwgb3RoZXIgdGhhbiBtb3ZpbmcgYSBmcmFjdGlv
biBvZgo+ID4gPiA+IHRoZSBwb3dlciBkb21haW4gZnVuY3Rpb25hbGl0eSBpbnRvIHRoZSBmaXJt
d2FyZT8KPiA+ID4gPgo+ID4gPiA+IFRoZSBkaXNjdXNzaW9ucyBvbiB0aGUgbGFzdCBzdWJtaXNz
aW9ucyBvZiB0aGlzIGRyaXZlciBhbHJlYWR5IGVzdGFibGlzaGVkIHRoYXQKPiA+ID4gPiB3ZSBj
YW4ndCBtb3ZlIGFsbCBmdW5jdGlvbmFsaXR5IGZvciB0aGUgcG93ZXIgZG9tYWlucyBpbnRvIHRo
ZSBmaXJtd2FyZSwgYXMKPiA+ID4gPiBjb250cm9sbGluZyByZWd1bGF0b3JzIGlzIHByb2JhYmx5
IG5vdCBlYXN5IHRvIGRvIGZyb20gdGhpcyBjb250ZXh0LiBBbHNvIHRoZQo+ID4gPiA+IFRGLUEg
c2lkZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGlzIGRyaXZlciBpcyAiaW50ZXJlc3RpbmciIElNSE8s
IGl0IGRvZXMgc3R1ZmYgbGlrZQo+ID4gPiA+IGFjY2Vzc2luZyB0aGUgY2xvY2sgY29udHJvbGxl
ciByZWdpc3RlcnMgd2l0aG91dCBhbnkgbG9ja2luZyBvciBvdGhlciBtZWFucyBvZgo+ID4gPiA+
IG11dHVhbCBleGNsdXNpb24gd2l0aCB0aGUgTGludXgga2VybmVsIGNsb2NrIGNvbnRyb2xsZXIg
ZHJpdmVyLgo+ID4gPiA+Cj4gPiA+Cj4gPiA+IFRoZSBjbG9jayBoYW5kbGluZyBpcyBpbiBrZXJu
ZWwgc2lkZSB0aHJvdWdoIENDRiwgbm90IGluIEFURi4gU2VlIHRoZSBwYXRjaCBiZWxvdy4KPiA+
ID4KPiA+ID4gPiBXaHkgY2FuJ3Qgd2UganVzdCBleHRlbmQgdGhlIGV4aXN0aW5nIEdQQ3YyIGRy
aXZlciB3aXRoIHN1cHBvcnQgZm9yIHRoZSBvdGhlcgo+ID4gPiA+IGkuTVg4TSBmYW1pbHkgbWVt
YmVycz8KPiA+ID4gPgo+ID4gPgo+ID4gPiBUaGUgcmVhc29uIHRoYXQgd2h5IEkgZG9u4oCZdCBs
aWtlIHRvIGV4dGVuZCB0aGUgR1BDdjIgaXMgdGhhdCB3aGVuIGRvaW5nIGRvbWFpbiBvbi9vZmYs
Cj4gPiA+IFdlIG5lZWQgdG8gYWNjZXNzIHNvbWUgc3BlY2lhbCBjb250cm9sIHJlZ2lzdGVyIGlu
IGVhY2ggZG9tYWluICYgZG8gc29tZSBzcGVjaWFsIGZsb3csCj4gPiA+IFRoZXNlIGNvbnRyb2wg
cmVnaXN0ZXIobWVkaWFtaXggYmxvY2sgY29udHJvbCwgdnB1bWl4IGJsb2NrIGNvbnRyb2wpIGlz
IG5vdCBpbiBHUEMKPiA+ID4gbW9kdWxlJ3MgYWRkcmVzcyByYW5nZS4gTm8gYmVuZWZpdCB0byBy
ZXVzZSB0aGUgR1BDdjIuIE9ubHkgYnJpbmcgY29tcGxleGl0eSB0byB0aGUKPiA+ID4gR1BDdjIg
ZHJpdmVyIGVhY2ggdGltZSBhIG5ldyBTb0MgaXMgYWRkZWQuCj4gPiA+Cj4gPiA+IFllcywgdGhl
IGkuTVg4TSBwb3dlciBkb21haW4gc3VwcG9ydCBoYXMgYmVlbiBwZW5kaW5nIGZvciBhIHdoaWxl
LiBBUk0gZ3V5cyByZWplY3RlZCB0aGlzIHBhdGNoc2V0Cj4gPiA+IGJlY2F1c2UgdGhleSBzdWdn
ZXN0IHVzIHRvIHVzZSBTQ01JIHJhdGhlciB0aGFuIFNpUC4gQnV0IFNDTUkgaXMgb25seSBwYXJ0
aWFsIHN1aXRhYmxlIGZvciBvdXIKPiA+ID4gY2FzZS4KPiA+Cj4gPiBDYW4geW91IHBsZWFzZSBw
b2ludCBtZSB0byB0aGUgbW9zdCByZXNlbnQgdmVyc2lvbiBvZiB0aGUgVEYtQSBzaWRlCj4gPiBp
bXBsZW1lbnRhdGlvbiBvZiB0aGlzPyBUaGUgaS5NWDhNTSBpbXBsZW1lbnRhdGlvbiBpbiB0aGUK
PiA+IGlteF81LjQuM18yLjAuMCBicmFuY2ggaW4gdGhlIGNvZGVhdXJvcmEgaW14LWF0ZiByZXBv
IHN0aWxsIGNvbnRhaW5zCj4gPiB3cml0ZXMgdG8gdGhlIGNsb2NrIGNvbnRyb2xsZXIgcmVnaXN0
ZXIgcmFuZ2UuCj4gPgo+ID4gQWxzbyBJIHdvdWxkIGxvdmUgdG8gbGVhcm4gd2h5IHRoZSBHUEMg
bmVlZHMgdG8gYWNjZXNzIE1lZGlhbWl4IGFuZAo+ID4gVlBVbWl4IGRvbWFpbiByZWdpc3RlcnMu
IElmIHlvdSBhcmUgdGFsa2luZyBhYm91dCB0aGUgTk9DIGNvbmZpZ3VyYXRpb24KPiA+IEkgd291
bGQgc3Ryb25nbHkgc3VnZ2VzdCB0aGF0IHRob3NlIHNob3VsZCBiZSBoYW5kbGVkIGJ5IGEgTGlu
dXggc2lkZQo+ID4gaW50ZXJjb25uZWN0IGRyaXZlciwgdGhpcyBoYXMgbm90aGluZyB0byBkbyB3
aXRoIHRoZSBwb3dlciBkb21haW4KPiA+IHNlcXVlbmNpbmcsIGl0IGp1c3QgaGFwcGVucyB0byBs
b3NlIHN0YXRlIG92ZXIgdGhlIHBvd2VyIGRvd24gYW5kIG5lZWRzCj4gPiB0byBiZSByZXByb2dy
YW1tZWQgYWZ0ZXIgcG93ZXIgb24uIFRoZSBOT0MgY29uZmlndXJhdGlvbiB0aG91Z2ggaXMgdXNl
LQo+ID4gY2FzZSBkZXBlbmRlbnQsIHNvIHRoaXMgc2hvdWxkIGJlIHByb3Blcmx5IGhhbmRsZWQg
aW4gYSByaWNoIE9TIGRyaXZlci4KPiA+Cj4gPiBTdXJlIHdlIG5lZWRzIHRvIGV4dGVuZCB0aGUg
TGludXggc2lkZSBHUEMgZHJpdmVyIGZvciBlYWNoIG5ldyBTb0MKPiA+IGdlbmVyYXRpb24sIGJ1
dCB0aGF0J3Mgbm8gZGlmZmVyZW50IGZyb20gYW55IG90aGVyIGhhcmR3YXJlIGRyaXZlciBpbgo+
ID4gTGludXguIERyaXZlcnMgYXJlIHRoZSBhYnN0cmFjdGlvbiBhcm91bmQgdGhlIGhhcmR3YXJl
LCB0aGVyZSBpcyBubwo+ID4gbmVlZCB0byBpbnZlbnQgYW5vdGhlciBvbmUgaWYgdGhlcmUgYXJl
IG5vIGNsZWFyIGJlbmVmaXRzLgo+ID4KPgo+IEphY2t5IC8gQWJlbCwKPgo+IEFueSBtb3ZlbWVu
dCBvbiB0aGlzPyBBcyBJIHNlZSBpdCB0aGUgbGFjayBvZiBpbXg4bW0gcG93ZXItZG9tYWluCj4g
c3VwcG9ydCBpbiB0aGUga2VybmVsIGlzIGhvbGRpbmcgdXAgVVNCLCBQQ0llLCBWUFUsIGFuZCBw
ZXJoYXBzCj4gR1BVL0NTSSBhcyB3ZWxsLiBJIHdvdWxkIHRlbmQgdG8gYWdyZWUgdGhhdCBoaWRp
bmcgdGhpcyBmdW5jdGlvbmFsaXR5Cj4gaW4gdGhlIFRGLUEgaXMgcHJvYmFibHkgbm90IHRoZSBi
ZXN0IGFwcHJvYWNoIGVzcGVjaWFsbHkgYXMgdGhhdAo+IHJlcXVpcmVzIGEgTlhQIHZlcnNpb24g
b2YgdGhlIFRGLUEuIEkgcmVhbGx5IGRvbid0IHNlZSB0aGUgaXNzdWUgd2l0aAo+IHRoZSBncGMg
ZHJpdmVyIGdldHRpbmcgYSBsaXR0bGUgbW9yZSBjb21wbGljYXRlZCBpZiBpdCBuZWVkcyB0by4g
VGhlcmUKPiBpcyBib3VuZCB0byBiZSBzb21lIGNvbXBsaWNhdGlvbiBhcyB0aGVyZSBpcyBzdWNo
IGEgbGFyZ2UgdmFyaWF0aW9uIG9mCj4gSU1YOCBwcm9kdWN0cyBvdXQgdGhlcmUhICh0YWxrIGFi
b3V0IGNvbmZ1c2luZyEpLgoKTlhQIC0KClBsZWFzZSBkb24ndCBsZXQgcGVyZmVjdCBiZSB0aGUg
ZW5lbXkgb2YgdGhlIGdvb2QuICBXZSBoYXZlIHNvbWUKcGF0Y2hlcyBmbG9hdGluZyBhcm91bmQg
d2hpY2ggZW5hYmxlIG11Y2ggb2YgdGhlIGZ1bmN0aW9uYWxpdHkuICBJdAptYXkgbm90IGJlIHBl
cmZlY3QsIGJ1dCBpdCdzIGFuIGltcHJvdmVtZW50IGZyb20gd2hhdCB3ZSBjdXJyZW50bHkKaGF2
ZSAtIHdoaWNoIGlzIG5vdGhpbmcuICBQbGVhc2UgbGV0IHRoZSBwYXRjaGVzIGluLCBhbmQgd2hl
biB0aGUKYWx0ZXJuYXRpdmUgbWV0aG9kcyBiZWNvbWUgYXZhaWxhYmxlLCB3ZSBjYW4gcmVtb3Zl
IHRoZXNlLgoKSWYgVEZfQSBpcyBhcmd1aW5nIGFib3V0IGhvdyB0byBwdXNoIHRoZSBwYXRjaGVz
IHVwc3RyZWFtLCB0aGVuIG1heWJlClRpbSBpcyB3cmlnaHQgYW5kIGl0J3Mgbm90IGEgZ29vZCBp
ZGVhLCBhbmQgd2Ugc2hvdWxkIGNvbnNpZGVyCnNvbWV0aGluZyBlbHNlLgoKYWRhbQoKPgo+IEJl
c3QgUmVnYXJkcywKPgo+IFRpbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
