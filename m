Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA37311A090
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 02:36:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5mRR+vDErUoNMDAnIh+qlZNMHhnBeMiys7+fOXxOdM=; b=RuW5vR5hXFgJJJ
	VJnlSMVcMX8qFAxzAPGOov3CxSrClTwfAWM5qzB1Vz+Ika5BpojpYKXXlMa1GF+nMmxX+1YX3kFdB
	D/T9Xl4IqHRG/u+WYYHqvNpyGHkcSLtTL5joX31XR0uRvtAq3UYprNyWTWVIcYuhDhSo6KOJaInq9
	uhS3EaRTqlM3fzvEN0KcDytBSMonrFZOjeiNliVV+honYBIXsLfoK90ghSOhw4X925c/vz8tSJX1L
	fO8JlwP8HkQs9MPKRwuyd4PZ7JGwsR41uli0o6uhF2Sm2IZloLQrWCzagqeUOlgNcwdIPVep7y2kA
	3REdQ8+lOMHHuA9H+K8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieqvI-0007HN-SP; Wed, 11 Dec 2019 01:36:16 +0000
Received: from mail-pg1-f171.google.com ([209.85.215.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieqv5-0007Gi-S7
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 01:36:08 +0000
Received: by mail-pg1-f171.google.com with SMTP id b1so9896181pgq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 17:36:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=aKAag7StJwHjJgF4Iw4j8lQcbdLUNDm8myg04kTxn9k=;
 b=kLIPunHnVUuvmbW9rXg8zTkCFy+zFvtKaf+EIzYrzUee733a+UTrVMm4iRUSWZioE9
 iuEYr417qqGylIkB3kzgp1tv7G8nQf+NTq6JtF6i+fnj1FKwXzpSwb41Ia9BLu26uh3P
 CftzWInsz7AvZOuTPNBYQzrXCBnfSjnMLpuliUi2RNO9TisT4dOJQc7geiEZef8E7G1U
 Bpz7OlP9zjb2lBATSW4SyuBKjRJd9eTpQYB1wH5is3SqQFupejYXjSYXtAvgVE10eSn/
 eJ8S4sspV86jMqTCZj558GCaj5nLAC202blgKAtG+6MflHnezgMk3tHHWyEGIHY7iadK
 cG4w==
X-Gm-Message-State: APjAAAVfaKj9vpwmS9O4m3y4/nKXQ9xJzFZ4J16A4DcrJKlgWJmB9qO2
 FtdnCwsTg3S3cqz6J24AKsQP1w==
X-Google-Smtp-Source: APXvYqwrGUBp108UvPwXHDmx5v8fUZA+4Tr3JPZOJ5FOBq+sDk9+AEXogckf+I+WbeS1IcnPb8FLJw==
X-Received: by 2002:a65:578e:: with SMTP id b14mr1264107pgr.444.1576028162332; 
 Tue, 10 Dec 2019 17:36:02 -0800 (PST)
Received: from [192.168.43.25] (210-54-242-39.adsl.xtra.co.nz. [210.54.242.39])
 by smtp.gmail.com with ESMTPSA id c8sm297591pfj.106.2019.12.10.17.35.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Dec 2019 17:36:01 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [EXT] iMX6/UART imprecise external abort
From: Andre Renaud <arenaud@designa-electronics.com>
In-Reply-To: <CAOMZO5AP4F3fMwbx7TbnJ-xNPRh6r+3=TccWasVJER=cjLkgjA@mail.gmail.com>
Date: Wed, 11 Dec 2019 14:35:56 +1300
Message-Id: <789B91A2-6416-4906-AD32-BD66BDF879B3@designa-electronics.com>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
 <CAEj2-1M6950NxK0mOBzdc4qz3b=eBzD8NdLKE55aas5WN0iZkA@mail.gmail.com>
 <VI1PR0402MB3600DD7A4C9BFFE8E2805378FF5B0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAEj2-1PCDWSiP98ZN9ufa-Nws_4KSgX7Jf8gK1+TM1zEuU3SKw@mail.gmail.com>
 <CAOMZO5AP4F3fMwbx7TbnJ-xNPRh6r+3=TccWasVJER=cjLkgjA@mail.gmail.com>
To: Fabio Estevam <festevam@gmail.com>
X-Mailer: Apple Mail (2.3601.0.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_173603_915112_C125979D 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.171 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Youxin Su <suyouxin@sporelab.io>, Andy Duan <fugang.duan@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmFiaW8sCj4gT24gMTEvMTIvMjAxOSwgYXQgMToyNyBQTSwgRmFiaW8gRXN0ZXZhbSA8ZmVz
dGV2YW1AZ21haWwuY29tPiB3cm90ZToKPj4gVGhhbmtzIC0gd2UgZGlkIGhhdmUgdGhpcyB3cm9u
Zy4gSG93ZXZlciBldmVuIGFmdGVyIGNvcnJlY3RpbmcgdGhpcyBpdAo+PiBzdGlsbCBmYWlscyBp
biB0aGUgc2FtZSB3YXkuIFRoaXMgaXMgd2hhdCB3ZSdyZSB0cnlpbmc6Cj4gCj4gSSB0cmllZCB5
b3VyIHBhdGNoIG9uIG15IGlteDZxcCB3YW5kYm9hcmQgYW5kIGRpZCBub3QgcmVwcm9kdWNlIHRo
ZSBlcnJvci4KPiAKPiBBcyB5b3UgYWN0aXZhdGVkIHVhcnQyIEkgY2hhbmdlZCB5b3VyIGNvZGUg
dG8gdXNlIHR0eW14YzEgaW5zdGVhZC4KPiAKPiBEbyB5b3UgY29ubmVjdCBVQVJUMiB0byB0aGUg
UEMgYW5kIGFsc28gc2VuZCBjb21tYW5kIGZyb20gdGhlIFBDIHRvIHRoZSBib2FyZD8KClllcywg
d2UgY29ubmVjdCBpdCB0byBhIFBDIGFuZCBiYXNpY2FsbHkgc3RyZWFtIGRhdGEgaW4gYm90aCBk
aXJlY3Rpb25zIGJldHdlZW4gdGhlIHR3by4KCk9uIHRoZSBQQyBpdOKAmXMgYXMgc2ltcGxlIGFz
Ogp3aGlsZSA6IDsgZG8gZWNobyB0ZXN0ID4gL2Rldi90dHlVU0IxIDsgc2xlZXAgMC4wNSA7IGRv
bmUKCkl0IGRvZXMgbmVlZCBiaS1kaXJlY3Rpb25hbCB0cmFmZmljIHRvIHRyaWdnZXIuCgpSZWdh
cmRzLApBbmRyZQogIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
