Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3976EA52E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqTqMch8KSjPT+fsga5VCWDIVwrI1p2ry2OJcjPvc9g=; b=gNMHRTZ/dwcZPo
	P66igTIFEGknOuM0OG24RiaBGWBOOPCnIW5pPeYv+KzjJ42Ht5Dbhj1NxuRIu8gtu/T3QBmkD8c++
	/K7uzj4MBaDf4jnjMOqsmuuuXB3Tw4bOdDSuXsDVDvpf4be8yquWc3x/A2TA/gEOQzy1A8RM2m1bn
	0qQ96bLpk8t6PuH7EBv8NzWzrB2IFXu9yqmR8rucXk4bAzqe/ICnfXSGugNtfwstbHQ1xzY3d+xqi
	2iCu+Ztwi/GSAsBbCZM8A9PyTIaw7G3GXhOdT/UUWFHcBrpVvUAvpQcc6oub1lnSkXmn1dLrLJnLO
	jJyCJ5NNkMGmWay+j56Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ikd-0002yV-O7; Mon, 02 Sep 2019 09:35:55 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ikI-0002uG-27
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:35:36 +0000
Received: by mail-qk1-x743.google.com with SMTP id i78so10513295qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vAwnLuMjjeItOOqHHXHJmcc2xpDcbEuHDPmJlUbyfys=;
 b=PlrwvAU2KCgLvuLJeYmq+oXRO6WFqP5OyD8x2GqpXCKWsQyaCQv+JWXDCy8y5BWeL5
 yZzac6WC7sgZDmlZSV40kMzZtSar7DmfkwcY+qjoNz7vl+MVUr94nFmNDMGHou7vDoKr
 1B1ExfRcC4j2fSK0hHmzHPehXdJFDwqnzCaQhW/eOsqs4lGEkbHklA9K71U7T7O4JMti
 pbLv48onqk/2cqgkxei++KAtZJvLIWmMwfSgVsLTSoWwHjt8/8NELscJ9gkK0q1XeH9Y
 +xXI99gACrkxEuyAEdP6FgWTd0DNtbq57D/lBrP/cMOsKt7I0hyS5ASpzkb9T4Zy86QP
 4k+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vAwnLuMjjeItOOqHHXHJmcc2xpDcbEuHDPmJlUbyfys=;
 b=rAGFPbxe/IcDASC7bbo/WbwU9XvZ7O8A1cN9bPO6WrJNh8hf2RvboUXOGe/kbtEG+j
 FL0LS5VYqV6whX/MKEMKcpcVICb/pRM+C5kw/P58YpzEI+dzmS9dxgIpWc7AP9i7esPV
 BwDzCq+q7qsc7HwBoT0Eiyo37hTQwVw6KhDpLTuV+G3XfCFQomq4WSeMKLbpEqFC++Yv
 Gc3fnJ2+YjVmv1ymi8lkhx3DM23rI5X8OMvuQi6zFISriq0YD0+ysNLpEBG8rAg1ZQbk
 PVIxhEy269J3OWuB1BEdvHurXn3MQK3B9Xs+xRGIDw9xUZw+Lh51kOMucVozHBcD3nFE
 v7+w==
X-Gm-Message-State: APjAAAXz+OzMMif322o1X/PkhvQ7MdC7JqS8snaImnifGjqk4Rzu0Itl
 WmcFRQzBdJh1WRvD7POFbWhVQlReEpiDF6SdCpZ6og==
X-Google-Smtp-Source: APXvYqwcv2iKNWBzmW6xpbxs7QP7I0kVxvLsIMZ9MSGwXwqDaAyBeeDhkf6dp3c6TQppZmZjMOeNnmx68BmhybQL44Y=
X-Received: by 2002:a37:813:: with SMTP id 19mr24965528qki.427.1567416933410; 
 Mon, 02 Sep 2019 02:35:33 -0700 (PDT)
MIME-Version: 1.0
References: <1564754931-13861-1-git-send-email-yannick.fertre@st.com>
 <50695b37-df51-08d6-a11e-99f9349aa481@st.com>
In-Reply-To: <50695b37-df51-08d6-a11e-99f9349aa481@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Mon, 2 Sep 2019 11:35:22 +0200
Message-ID: <CA+M3ks5GaN2-jEHO5-QGGkhYG2U-ExQR4=kNuk0jBxH2BkRGYQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: stm32: move ltdc pinctrl on stm32mp157a dk1
 board
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_023535_049257_4C421F49 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yannick FERTRE <yannick.fertre@st.com>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KyBkcmktZGV2ZWwgbWFpbGluZyBsaXN0CgpMZSBsdW4uIDIgc2VwdC4gMjAxOSDDoCAxMDo0NSwg
UGhpbGlwcGUgQ09STlUgPHBoaWxpcHBlLmNvcm51QHN0LmNvbT4gYSDDqWNyaXQgOgo+Cj4gSGkg
WWFubmljaywKPgo+IE9uIDgvMi8xOSA0OjA4IFBNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6Cj4g
PiBUaGUgbHRkYyBwaW5jdHJsIG11c3QgYmUgaW4gdGhlIGRpc3BsYXkgY29udHJvbGxlciBub2Rl
IGFuZAo+ID4gbm90IGluIHRoZSBwZXJpcGhlcmFsIG5vZGUgKGhkbWkgYnJpZGdlKS4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJlQHN0LmNvbT4K
PiA+IC0tLQo+ID4gICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1kazEuZHRzIHwgNiAr
KystLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtZGsx
LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWRrMS5kdHMKPiA+IGluZGV4IGYz
ZjBlMzcuLjEyODVjZmMgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1w
MTU3YS1kazEuZHRzCj4gPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1kazEu
ZHRzCj4gPiBAQCAtOTksOSArOTksNiBAQAo+ID4gICAgICAgICAgICAgICByZXNldC1ncGlvcyA9
IDwmZ3Bpb2EgMTAgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ICAgICAgICAgICAgICAgaW50ZXJydXB0
cyA9IDwxIElSUV9UWVBFX0VER0VfRkFMTElORz47Cj4gPiAgICAgICAgICAgICAgIGludGVycnVw
dC1wYXJlbnQgPSA8JmdwaW9nPjsKPiA+IC0gICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IiwgInNsZWVwIjsKPiA+IC0gICAgICAgICAgICAgcGluY3RybC0wID0gPCZsdGRjX3Bp
bnNfYT47Cj4gPiAtICAgICAgICAgICAgIHBpbmN0cmwtMSA9IDwmbHRkY19waW5zX3NsZWVwX2E+
Owo+ID4gICAgICAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPgo+ID4gICAgICAgICAgICAg
ICBwb3J0cyB7Cj4gPiBAQCAtMjc2LDYgKzI3Myw5IEBACj4gPiAgIH07Cj4gPgo+ID4gICAmbHRk
YyB7Cj4gPiArICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiLCAic2xlZXAiOwo+ID4gKyAg
ICAgcGluY3RybC0wID0gPCZsdGRjX3BpbnNfYT47Cj4gPiArICAgICBwaW5jdHJsLTEgPSA8Jmx0
ZGNfcGluc19zbGVlcF9hPjsKPgo+IFJldmlld2VkLWJ5OiBQaGlsaXBwZSBDb3JudSA8cGhpbGlw
cGUuY29ybnVAc3QuY29tPgo+Cj4gVGhhbmtzCj4gUGhpbGlwcGUgOikKPgo+ID4gICAgICAgc3Rh
dHVzID0gIm9rYXkiOwo+ID4KPiA+ICAgICAgIHBvcnQgewo+ID4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
