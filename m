Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EE81BE42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aotvq9q2MiOlM3DOAa8k9SP2xZhbGOTl+fHsUAHYMqE=; b=rjrGKZ9Q76bYRw
	jp+3LYlfzMi3smRulS37VrLkFdOdU7fREMpmRko94hOKuMQzpWceOZv35AFy7ixszYvQ1jS8aUiGx
	PoVHYpUE8mrQFVrkXUJ8JG7R81tY36c8Xpc6RCQ241CwBUt1esYPfW4VgXZAYGbDROkfF+YvVeEbN
	iLsr/nPqDNmsvP941r2Bb6Zb/0SYEG+Xe8mgBHMWPWIK88zMa3KbtNZKFjf5kQmWo9GqtOsLu/Arw
	pyYTHUq3cTCsFLHqwRoc7ckCdAXkqt/evL7puSjKxrAD1AwLyoWbW8TRIETfrmcvx4lWbXkiVH8R5
	JxSJs1Whd7FdNXvCQ/xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQH5i-00088Q-JL; Mon, 13 May 2019 19:58:30 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQH5b-000882-0B
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:58:24 +0000
Received: by mail-io1-xd42.google.com with SMTP id p2so11103487iol.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8E2lp8jVprsIWJDs3aj1G6BOEVXUF319INMkMLGaQPQ=;
 b=uWpdWTEnUT7BTgsJQWf5pKdud4DbPSFbUIIXg+p6wqy1tzhB9pKrPRFV470b2FWst2
 ZdnelJWwFio2yavTWMioXedAoUY40VFFpYjyh45NXBxDrQEZj987e4GCA0gNm4yvggBA
 t3EJCHtc6Yo9LMOHT7sR+8a5XqcfaeyL58/ieMmMoASsDM7UG6y8tX8gJpD2LiozdiUj
 cBBGsnQQlXUZDEeKdkCzGYatPDEvRhrKRMyCbSjHNu/bHuLScNN++9GcR4MCq8fucHo4
 KxGBY90rc8IUEN4WDxLsuz3OgCb+11/8R2PWR17srWGFtHo+o6RL5rxuv1hMGX0JBTyQ
 SC3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8E2lp8jVprsIWJDs3aj1G6BOEVXUF319INMkMLGaQPQ=;
 b=ih4UOcss6jS8DgnI0fn2GXXR7//i2505nZKjIm9e72abLV9rznG/XospxbhT+dOAcd
 N1/EaBrt3T73HsYFkmvTJSWjYCd/PhZGhRzb03oXjqH6fh9XC6PZfafcz8F7jM72u7sA
 ImM4yslKvE0S2Vig6e4DFqgF1KcxH5TGwyB+Z6CexWvsvSDd8hKa74BfEJ0oGB0DNXcv
 nQubRUO/OQm2kBnglZHr6RjZ+dBWtZsmp4kc1U1yxKGOUNLFAqrQ8D76ab/LLMMBj7LN
 P/88e/2usOEhe1phmlXjVM/qBwz8S6+duMt9oKGK5vMN+QpzCDILF9ahgtAzD2oWpN6G
 ylqQ==
X-Gm-Message-State: APjAAAVD+GRbvK1xDT7KCsTDuKspaP0TWuHEJcPui8sHUVfYwvj5D8Xc
 Fh6cu99oz/GALKys9jWLrKele5r7jB58fwaP3n4=
X-Google-Smtp-Source: APXvYqxhy6RVX8SCv3UxFKo30Lo9SicUvdQXI4VmMLRILDRKbsDfy5vwl6x8wMZOVD8ur7XVSYXIaGkaaagjru51cxk=
X-Received: by 2002:a6b:b212:: with SMTP id b18mr1073091iof.15.1557777501840; 
 Mon, 13 May 2019 12:58:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190513035909.30460-1-andrew.smirnov@gmail.com>
 <20190513035909.30460-2-andrew.smirnov@gmail.com>
 <CAOMZO5Dkv_g-+GjYfrRP8h0bmRMws1iETRJiGmTBx7tfM_HwyA@mail.gmail.com>
In-Reply-To: <CAOMZO5Dkv_g-+GjYfrRP8h0bmRMws1iETRJiGmTBx7tfM_HwyA@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 13 May 2019 12:58:10 -0700
Message-ID: <CAHQ1cqFK=ro++GtTOisQtgSqHm4jNdSCfMDbHXaOVcbMj5eX6A@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: vf610-zii-dev: Add QSPI node
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_125823_041396_73C38FDE 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Chris Healy <cphealy@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMTMsIDIwMTkgYXQgNToxNSBBTSBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgQW5kcmV5LAo+Cj4gT24gTW9uLCBNYXkgMTMsIDIwMTkg
YXQgMTI6NTkgQU0gQW5kcmV5IFNtaXJub3YKPiA8YW5kcmV3LnNtaXJub3ZAZ21haWwuY29tPiB3
cm90ZToKPgo+ID4gKyZxc3BpMCB7Cj4gPiArICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7Cj4gPiArICAgICAgIHBpbmN0cmwtMCA9IDwmcGluY3RybF9xc3BpMD47Cj4gPiArICAgICAg
IHN0YXR1cyA9ICJva2F5IjsKPiA+ICsKPiA+ICsgICAgICAgLyoKPiA+ICsgICAgICAgICogQXR0
YWNoZWQgTVQyNVFMMDIgY2FuIGdvIHVwIHRvIDkwTWh6IGluIERUUiBhbmQgMTY2IGluIFNEUgo+
ID4gKyAgICAgICAgKiBtb2Rlcywgc28gd2UgbGltaXQgc3BpLW1heC1mcmVxdWVuY3kgdG8gOTBN
aHoKPgo+IE5pdDogSXQgaXMgTUh6LCBub3QgTWh6Lgo+Cj4gTVQyNVFMMDIgZGF0YXNoZWV0IHJl
ZmVycyB0byBEVFIgYW5kIFNUUiAobm90IFNEUikuCj4KClN1cmUsIHdpbGwgZml4LgoKPiBBbHNv
LCB0aGUgcHVibGljIGRhdGFzaGVldCBJIGNhbiBzZWUgb25saW5lIGxpc3RzIHRoZXNlIGxpbWl0
cyBkaWZmZXJlbnRseToKPgo+ICLigKIgQ2xvY2sgZnJlcXVlbmN5IOKAkyAxMzMgTUh6IChNQVgp
IGZvciBhbGwgcHJvdG9jb2xzIGluIFNUUiDigJMgNjYgTUh6Cj4gKE1BWCkgZm9yIGFsbCBwcm90
b2NvbHMgaW4gRFRSIgoKSGVyZSdzIHRoZSBkYXRhc2hlZXQgSSBnb3QgdGhvc2UgbnVtYmVycyBm
cm9tOgoKaHR0cHM6Ly93d3cubWljcm9uLmNvbS8tL21lZGlhL2NsaWVudC9nbG9iYWwvZG9jdW1l
bnRzL3Byb2R1Y3RzL2RhdGEtc2hlZXQvbm9yLWZsYXNoL3NlcmlhbC1ub3IvbXQyNXEvZGllLXJl
di1iL210MjVxX3Fsa3RfdV8wMmdfY2JiXzAucGRmCgpUaGFua3MsCkFuZHJleSBTbWlybm92Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
