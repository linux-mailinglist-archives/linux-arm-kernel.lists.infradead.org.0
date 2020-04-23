Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 249201B5C77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 15:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAQarOR7IDhE2s2WZcLBdyK4FJqtsUJ3fnS2ru0hOoU=; b=Zub23MONhOtPRR
	Zsv2qsTYMkMJRF2/bLVOa04J2PBwB+Atz2XOASp9sozdRVAaDdt0ZO5EtaxGnaXfC+vZfdhW88zE/
	MujuSxey2gKAQv5L3OHKX1Knyje+G/FO98xJF9fad+Jeantnl6I0NLIKp+RhANQY67AukdsGAG0iO
	7RypC26o7AaAdrjFLX4YVCBccJcZLG6jq5U1QDKNKdyvYGzBDBmqOHGSiQ7TRIH8YUe1hfgcz8mD5
	sYdT9MX4TPqHTWFu5stJm5K0oYePTj8ES10zJcxY4b1NQbklwa1uIH3nK0IVEoKJh7933p9WMn8XW
	uTaKKLtnlBs8N7JhSn5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRbop-00059M-OM; Thu, 23 Apr 2020 13:23:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRbof-00056T-K0
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 13:23:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id t14so6803860wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 06:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=6lrCN4Y2jvBEhMEE9yoKB0QoRLluJFmgeNzXOO0519c=;
 b=MfGul8Hpypn6B6iEzWypyjdhBn2Sm6I3sSyNkRkdieKZwsujvoViJAlUxKfCp6PvVT
 nwSpOW9fHqYx6TfeuZBHXpiT/Q2s2RfycyW/XV2CCERaWqWBevrZxULrN89FB2oqqqIj
 EC4+LROpYsU0aZMAoa54xpOSfpfCZFQyZRrwaCx87r3hFioBkCt8KsdEjlJAImIi4s1I
 Us/CNyKM0JIG8zvg7SiTo3pIgmAXzgypQm3ZpltQJG1qtzhzgxWvcovuoFdh5tQZy9Cx
 NgvYaqs9da3YhKQ+izEK3Cgf+BXf15gAENfjKuHLNG3VaHH3xMMHcEogSfbIRqjGk5gK
 /7lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=6lrCN4Y2jvBEhMEE9yoKB0QoRLluJFmgeNzXOO0519c=;
 b=Rf3utwXK4d72G2bYZaACjgS9Bci2eT9npgDEoeXE7r+mOQ99T3ggszfXryIOj0GyXl
 /ehZSbwvAN0qalx7fRg9tg+YDEGlV201O9QFB8rgK0l7HS33gKM7488wJuLjzAZZxjIE
 sYlIgexO+1i0QV0YhAW5w/8b5sIiPPAIAvRNbVgU0Ae83uIe6MUbqolP0veOdhOEzn1E
 rir0wV3Sl3+8HyE+jGnjuZ3TXfobo6r5nhVlulwrbynf6JqvDV7V03EmxbWECIcfKxJF
 u+45CWchn7ZNTI3n8J95y7aFaa8kqRyLbWVKa+/g6mX92CM9KTLLtZgLeSjKZRV2dQ3I
 HL2A==
X-Gm-Message-State: AGi0PuYA37IWG45Q1CbdCJFYc+sQPOqrECVufLl/+N3AnQo+g3r3KpsQ
 TE4ZF0Vxn2UQg5Pz3+rtnP5B9g==
X-Google-Smtp-Source: APiQypLIExvxbZk7AtfC6O9cBOXmdm+gz1QSH3p+99FlJwwJBGarRXDyjXQkXRxvvC0opKaSfe3/tA==
X-Received: by 2002:adf:fdc1:: with SMTP id i1mr5430755wrs.158.1587648175280; 
 Thu, 23 Apr 2020 06:22:55 -0700 (PDT)
Received: from linaro.org ([37.167.216.250])
 by smtp.gmail.com with ESMTPSA id h137sm14658623wme.0.2020.04.23.06.22.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 06:22:54 -0700 (PDT)
Date: Thu, 23 Apr 2020 15:22:43 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v6 03/10] PM / EM: update callback structure and add
 device pointer
Message-ID: <20200423132243.GA65632@linaro.org>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-4-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410084210.24932-4-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_062258_178230_8AACDFEB 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, b.zolnierkie@samsung.com,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgMDk6NDI6MDNBTSArMDEwMCwgTHVrYXN6IEx1YmEgd3Jv
dGU6Cj4gVGhlIEVuZXJneSBNb2RlbCBmcmFtZXdvcmsgaXMgZ29pbmcgdG8gc3VwcG9ydCBkZXZp
Y2VzIG90aGVyIHRoYXQgQ1BVcy4gSW4KPiBvcmRlciB0byBtYWtlIHRoaXMgaGFwcGVuIGNoYW5n
ZSB0aGUgY2FsbGJhY2sgZnVuY3Rpb24gYW5kIGFkZCBwb2ludGVyIHRvCj4gYSBkZXZpY2UgYXMg
YW4gYXJndW1lbnQuCj4gCj4gVXBkYXRlIHRoZSByZWxhdGVkIHVzZXJzIHRvIHVzZSBuZXcgZnVu
Y3Rpb24gYW5kIG5ldyBjYWxsYmFjayBmcm9tIHRoZQo+IEVuZXJneSBNb2RlbC4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBMdWthc3ogTHViYSA8bHVrYXN6Lmx1YmFAYXJtLmNvbT4KPiAtLS0KClsgLi4u
IF0KCj4gK3N0YXRpYyBzdHJ1Y3QgZW1fcGVyZl9kb21haW4gKgo+ICtlbV9jcmVhdGVfcGQoc3Ry
dWN0IGRldmljZSAqZGV2LCBpbnQgbnJfc3RhdGVzLCBzdHJ1Y3QgZW1fZGF0YV9jYWxsYmFjayAq
Y2IsCj4gKwkgICAgIGNwdW1hc2tfdCAqc3BhbikKPiAgewo+ICAJdW5zaWduZWQgbG9uZyBvcHBf
ZWZmLCBwcmV2X29wcF9lZmYgPSBVTE9OR19NQVg7Cj4gIAl1bnNpZ25lZCBsb25nIHBvd2VyLCBm
cmVxLCBwcmV2X2ZyZXEgPSAwOwo+IEBAIC0xMDYsNyArMTA3LDcgQEAgc3RhdGljIHN0cnVjdCBl
bV9wZXJmX2RvbWFpbiAqZW1fY3JlYXRlX3BkKGNwdW1hc2tfdCAqc3BhbiwgaW50IG5yX3N0YXRl
cywKPiAgCQkgKiBsb3dlc3QgcGVyZm9ybWFuY2Ugc3RhdGUgb2YgJ2NwdScgYWJvdmUgJ2ZyZXEn
IGFuZCB1cGRhdGVzCj4gIAkJICogJ3Bvd2VyJyBhbmQgJ2ZyZXEnIGFjY29yZGluZ2x5Lgo+ICAJ
CSAqLwo+IC0JCXJldCA9IGNiLT5hY3RpdmVfcG93ZXIoJnBvd2VyLCAmZnJlcSwgY3B1KTsKPiAr
CQlyZXQgPSBjYi0+YWN0aXZlX3Bvd2VyKCZwb3dlciwgJmZyZXEsIGRldik7Cj4gIAkJaWYgKHJl
dCkgewo+ICAJCQlwcl9lcnIoInBkJWQ6IGludmFsaWQgcGVyZi4gc3RhdGU6ICVkXG4iLCBjcHUs
IHJldCk7Cj4gIAkJCWdvdG8gZnJlZV9wc190YWJsZTsKCldoeSBhcmUgdGhlIGNoYW5nZXMgJ2Nw
dScgdG8gJ2RldicgaW4gdGhlIHBhdGNoIDQvMTAgaW5zdGVhZCBvZiB0aGlzIG9uZSA/Cgo+IEBA
IC0yMzcsNyArMjM4LDcgQEAgaW50IGVtX2Rldl9yZWdpc3Rlcl9wZXJmX2RvbWFpbihzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBucl9zdGF0ZXMsCj4gIAl9Cj4gIAo+ICAJLyogQ3Jl
YXRlIHRoZSBwZXJmb3JtYW5jZSBkb21haW4gYW5kIGFkZCBpdCB0byB0aGUgRW5lcmd5IE1vZGVs
LiAqLwo+IC0JcGQgPSBlbV9jcmVhdGVfcGQoc3BhbiwgbnJfc3RhdGVzLCBjYik7Cj4gKwlwZCA9
IGVtX2NyZWF0ZV9wZChkZXYsIG5yX3N0YXRlcywgY2IsIHNwYW4pOwo+ICAJaWYgKCFwZCkgewo+
ICAJCXJldCA9IC1FSU5WQUw7Cj4gIAkJZ290byB1bmxvY2s7CgotLSAKCiA8aHR0cDovL3d3dy5s
aW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBT
b0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFy
bz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8
CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
