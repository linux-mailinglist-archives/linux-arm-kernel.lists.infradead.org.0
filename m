Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB7D140575
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 09:29:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RCBp1xg7paWRg8V9KvkBvDkO0a8SeYM/d3lxa0zkp7w=; b=cbGy6l0Yk0jZHF7PCT2D3ipkn
	hxv+/EdGEBgbM+T4WnqmCKQv15i01f+T79wbUMMF6eOglZAGEpmwazsCg0d+BXETSSBoWMuZXbMhm
	XLa1FB892AqCCywLtIkFHWQODBt/gXfbxMOi9MENylq3TvQ98HLrYFn9sBqQFWhAWvFcp7funM3Yq
	5pc8x2d6xjNsgZ+bGhYW6oWXJ4adWIq9nMboNsiA2B7j7Ei+yTUwM9tjMyWwkQbGanot5ZiJxxH9m
	osUtAX0yPgqKGH8rlMnYY/tZtOZSMfA0TA3CEGm8ljM0EHDTdjl5MACIh6YeeH0JPnk2PhKgri8l+
	kPe7rXOdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isN0C-0002we-PH; Fri, 17 Jan 2020 08:29:12 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isN00-0002pn-Pl
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 08:29:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579249735;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LoSVkR+RDCDap1H2Ddc2nLN1Iv/vdPUgeLmHqe7hs/I=;
 b=fK0GwgpRjYueKQDq4p7+ZBNElWDB0o4k7awcVH1ZkPsPBniK+wWULVd8t81/T/QYlAYhuW
 WoRB1iVDcwVaqlMEDru2rksEfAYAtkYa7E0V/kWje4rSsuVmZLR+8NxEKig+HJQuBnThLW
 k9yyA5t5vABNVD/0rG1dsUtJPacsPG4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-412-Po1P7G7vOva9QQtMwaxJpg-1; Fri, 17 Jan 2020 03:28:53 -0500
Received: by mail-wm1-f70.google.com with SMTP id q206so1971116wme.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 00:28:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JGWCnoz4xsPXynFtcMWaQE+mTSAMR+pmvTgjf5P4dt8=;
 b=Pzc33lQmTtto3TvYW9hfmtW/MPfs2KLlyf+vAfs4dRDnX8PGrwkIX2LbFZMa80ed3t
 LR5Z3dVYuwsYyg5bFBgWDVI6rU5feJVj/RdQQ/RaBdKdBW7IXWWaHP91RlEjmNV5c5I9
 i3NLLIvmWf9s1L4/mXeInLg04E4ZZQuKVIfVZ7kaR7CaG1/ZCDSP6wvLtqeqsoMSH+rV
 SmJCpUnbPsivKL0dE/piyJ/WlL2JFovKXL+G1JjEpyktFoJj+QlbrWfvXQebWn5UVrAb
 C4CjW3StkBinmVPQGLkKBY/lXdYW0Bn/pPLYRIBvEowFjOquHZxAraNt9WMmVkeVH/a0
 8wow==
X-Gm-Message-State: APjAAAX+cOniKT4HfumbhnpRz+s8nTTsKVCEHbG+oZxHWLAxhYvlUqfg
 +bltJmCagZKYn2d8QUQFPwUc36RVdeF5ccJvcRlriwdmymyn5v0mDH5F5KU3ZK36fAHWs7m8JEo
 PXLxbYhGySaS+S7EOu2tMqDinRfPJg8+fS24=
X-Received: by 2002:a7b:cb46:: with SMTP id v6mr3505857wmj.117.1579249732146; 
 Fri, 17 Jan 2020 00:28:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqz4tcotRh8gBfRenFaKusn7Zy62xalMs9bZ7C1/0nWT58CtSR9Ag7nTK8tKo2GJNsaFmgrl/w==
X-Received: by 2002:a7b:cb46:: with SMTP id v6mr3505827wmj.117.1579249731839; 
 Fri, 17 Jan 2020 00:28:51 -0800 (PST)
Received: from [192.168.1.81]
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id e18sm33427441wrr.95.2020.01.17.00.28.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Jan 2020 00:28:51 -0800 (PST)
Subject: Re: [RFC v5 44/57] objtool: arm64: Implement functions to add switch
 tables alternatives
To: Raphael Gault <raphael.gault@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-45-jthierry@redhat.com>
 <370e38b3-3c0c-e552-16fa-36571dd8e66b@arm.com>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <3d471dd2-f2ad-3cc4-b1f7-9a5da9c24cd1@redhat.com>
Date: Fri, 17 Jan 2020 08:28:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <370e38b3-3c0c-e552-16fa-36571dd8e66b@arm.com>
Content-Language: en-US
X-MC-Unique: Po1P7G7vOva9QQtMwaxJpg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_002900_989270_D59BA7A2 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, will@kernel.org,
 jpoimboe@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmFwaGHDq2wsCgpPbiAxLzE1LzIwIDQ6MzcgUE0sIFJhcGhhZWwgR2F1bHQgd3JvdGU6Cj4g
SGkgSnVsaWVuLAo+IAo+IE9uIDEvOS8yMCA0OjAyIFBNLCBKdWxpZW4gVGhpZXJyeSB3cm90ZToK
Pj4gVGhpcyBwYXRjaCBpbXBsZW1lbnRzIHRoZSBmdW5jdGlvbnMgcmVxdWlyZWQgdG8gaWRlbnRp
ZnkgYW5kIGFkZCBhcwo+PiBhbHRlcm5hdGl2ZXMgYWxsIHRoZSBwb3NzaWJsZSBkZXN0aW5hdGlv
bnMgb2YgdGhlIHN3aXRjaCB0YWJsZS4KPj4gVGhpcyBpbXBsZW1lbnRhdGlvbiByZWxpZXMgb24g
dGhlIG5ldyBwbHVnaW4gaW50cm9kdWNlZCBwcmV2aW91c2x5IHdoaWNoCj4+IHJlY29yZHMgaW5m
b3JtYXRpb24gYWJvdXQgdGhlIHN3aXRjaC10YWJsZSBpbiBhCj4+IC5kaXNjYXJkLnN3aXRjaF90
YWJsZV9pbmZvcm1hdGlvbiBzZWN0aW9uLgo+IAo+IEkgdGhpbmsgeW91IGZvcmdvdCB0byB1cGRh
dGUgdGhlIG5hbWUgb2YgdGhlIHNlY3Rpb24gd2l0aCByZXNwZWN0IHRvIAo+IHdoYXQgd2FzIGRv
bmUgaW4gdGhlIHByZXZpb3VzIHBhdGNoICguZGlzY2FyZC5zd2l0Y2hfdGFibGVfaW5mbyBpbnN0
ZWFkIAo+IG9mIC5kaXNjYXJkLnN3aXRjaF90YWJsZV9pbmZvcm1hdGlvbikuCj4gCgpPb3BzLCB5
b3UgYXJlIGNvcnJlY3QuIFRoYW5rcyBmb3Igc3BvdHRpbmcgdGhpcy4gSSdsbCB1cGRhdGUgdGhl
IGNvbW1pdC4KClRoYW5rcywKCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFJhcGhhZWwgR2F1bHQgPHJh
cGhhZWwuZ2F1bHRAYXJtLmNvbT4KPj4gW0ouVC46IFVwZGF0ZSBhcmNoIGltcGxlbWVudGF0aW9u
IHRvIG5ldyBwcm90b3R5cGVzLAo+PiDCoMKgwqDCoMKgwqDCoCBVcGRhdGUgc3dpdGNoIHRhYmxl
IGluZm9ybWF0aW9uIHNlY3Rpb24gbmFtZSwKPj4gwqDCoMKgwqDCoMKgwqAgRG8gc29tZSBjbGVh
biB1cCwKPj4gwqDCoMKgwqDCoMKgwqAgVXNlIHRoZSBvZmZzZXQgc2lnbiBpbmZvcm1hdGlvbiwK
Pj4gwqDCoMKgwqDCoMKgwqAgVXNlIHRoZSBuZXdseSBhZGRlZCByZWxhIHRvIGZpbmQgdGhlIGNv
cnJlc3BvbmRpbmcganVtcCAKPj4gaW5zdHJ1Y3Rpb25dCj4+IFNpZ25lZC1vZmYtYnk6IEp1bGll
biBUaGllcnJ5IDxqdGhpZXJyeUByZWRoYXQuY29tPgo+PiAtLS0KPj4gwqAgdG9vbHMvb2JqdG9v
bC9hcmNoL2FybTY0L2FyY2hfc3BlY2lhbC5jwqDCoMKgwqDCoMKgIHwgMjUxICsrKysrKysrKysr
KysrKysrLQo+PiDCoCAuLi4vb2JqdG9vbC9hcmNoL2FybTY0L2luY2x1ZGUvYXJjaF9zcGVjaWFs
LmggfMKgwqAgMiArCj4+IMKgIHRvb2xzL29ianRvb2wvY2hlY2suY8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCA0ICstCj4+IMKgIHRvb2xzL29i
anRvb2wvY2hlY2suaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqDCoCAyICsKPj4gwqAgNCBmaWxlcyBjaGFuZ2VkLCAyNTUgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL3Rvb2xzL29ianRvb2wvYXJjaC9hcm02
NC9hcmNoX3NwZWNpYWwuYyAKPj4gYi90b29scy9vYmp0b29sL2FyY2gvYXJtNjQvYXJjaF9zcGVj
aWFsLmMKPj4gaW5kZXggNTIzOTQ4OWM5YzU3Li5hMTVmNjY5N2RjNzQgMTAwNjQ0Cj4+IC0tLSBh
L3Rvb2xzL29ianRvb2wvYXJjaC9hcm02NC9hcmNoX3NwZWNpYWwuYwo+PiArKysgYi90b29scy9v
Ymp0b29sL2FyY2gvYXJtNjQvYXJjaF9zcGVjaWFsLmMKPj4gQEAgLTEsMTUgKzEsMjYyIEBACj4+
IMKgIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyCj4+ICsjaW5j
bHVkZSA8c3RkbGliLmg+Cj4+ICsjaW5jbHVkZSA8c3RyaW5nLmg+Cj4+ICsKPj4gwqAgI2luY2x1
ZGUgIi4uLy4uL3NwZWNpYWwuaCIKPj4gKyNpbmNsdWRlICIuLi8uLi93YXJuLmgiCj4+ICsjaW5j
bHVkZSAiYXJjaF9zcGVjaWFsLmgiCj4+ICsjaW5jbHVkZSAiYml0X29wZXJhdGlvbnMuaCIKPj4g
KyNpbmNsdWRlICJpbnNuX2RlY29kZS5oIgo+PiArCj4+ICsvKgo+PiArICogVGhlIGFybTY0X3N3
aXRjaF90YWJsZV9kZXRlY3Rpb25fcGx1Z2luIGdlbmVyYXRlIGFuIGFycmF5IG9mIGVsZW1lbnRz
Cj4+ICsgKiBkZXNjcmliZWQgYnkgdGhlIGZvbGxvd2luZyBzdHJ1Y3R1cmUuCj4+ICsgKiBFYWNo
IGp1bXAgdGFibGUgZm91bmQgaW4gdGhlIGNvbXBpbGF0aW9uIHVuaXQgaXMgYXNzb2NpYXRlZCB3
aXRoIAo+PiBvbmUgb2YKPj4gKyAqIGVudHJpZXMgb2YgdGhlIGFycmF5Lgo+PiArICovCj4+ICtz
dHJ1Y3Qgc3dpdGNoX3RhYmxlX2luZm8gewo+PiArwqDCoMKgIHU2NCBzd2l0Y2hfdGFibGVfcmVm
OyAvLyBSZWxvY2F0aW9uIHRhcmdldCByZWZlcmVuY2luZyB0aGUgCj4+IGJlZ2lubmluZyBvZiB0
aGUganVtcCB0YWJsZQo+PiArwqDCoMKgIHU2NCBkeW5fanVtcF9yZWY7IC8vIFJlbG9jYXRpb24g
dGFyZ2V0IHJlZmVyZW5jaW5nIHRoZSBzZXQgb2YgCj4+IGluc3RydWN0aW9ucyBzZXR0aW5nIHVw
IHRoZSBqdW1wIHRvIHRoZSB0YWJsZQo+PiArwqDCoMKgIHU2NCBuYl9lbnRyaWVzOwo+PiArwqDC
oMKgIHU2NCBvZmZzZXRfdW5zaWduZWQ7Cj4+ICt9IF9fYXR0cmlidXRlX18oKF9fcGFja2VkX18p
KTsKPj4gKwo+PiArc3RhdGljIGJvb2wgaW5zbl9pc19hZHJfcGNyZWwoc3RydWN0IGluc3RydWN0
aW9uICppbnNuKQo+PiArewo+PiArwqDCoMKgIHUzMiBvcGNvZGUgPSAqKHUzMiAqKShpbnNuLT5z
ZWMtPmRhdGEtPmRfYnVmICsgaW5zbi0+b2Zmc2V0KTsKPj4gKwo+PiArwqDCoMKgIHJldHVybiAo
KG9wY29kZSA+PiAyNCkgJiAweDFmKSA9PSAweDEwOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgczY0
IG5leHRfb2Zmc2V0KHZvaWQgKnRhYmxlLCB1OCBlbnRyeV9zaXplLCBib29sIGlzX3NpZ25lZCkK
Pj4gK3sKPj4gK8KgwqDCoCBpZiAoIWlzX3NpZ25lZCkgewo+PiArwqDCoMKgwqDCoMKgwqAgc3dp
dGNoIChlbnRyeV9zaXplKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBjYXNlIDE6Cj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiAqKHU4ICopKHRhYmxlKTsKPj4gK8KgwqDCoMKgwqDCoMKg
IGNhc2UgMjoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuICoodTE2ICopKHRhYmxl
KTsKPj4gK8KgwqDCoMKgwqDCoMKgIGRlZmF1bHQ6Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiAqKHUzMiAqKSh0YWJsZSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+ICvCoMKgwqAg
fSBlbHNlIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHN3aXRjaCAoZW50cnlfc2l6ZSkgewo+PiArwqDC
oMKgwqDCoMKgwqAgY2FzZSAxOgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gKihz
OCAqKSh0YWJsZSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBjYXNlIDI6Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiAqKHMxNiAqKSh0YWJsZSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBkZWZh
dWx0Ogo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gKihzMzIgKikodGFibGUpOwo+
PiArwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgIH0KPj4gK30KPj4gKwo+PiArc3RhdGljIHUz
MiBnZXRfdGFibGVfZW50cnlfc2l6ZSh1MzIgaW5zbikKPj4gK3sKPj4gK8KgwqDCoCB1bnNpZ25l
ZCBjaGFyIHNpemUgPSAoaW5zbiA+PiAzMCkgJiBPTkVTKDIpOwo+PiArCj4+ICvCoMKgwqAgc3dp
dGNoIChzaXplKSB7Cj4+ICvCoMKgwqAgY2FzZSAwOgo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IDE7Cj4+ICvCoMKgwqAgY2FzZSAxOgo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDI7Cj4+ICvC
oMKgwqAgZGVmYXVsdDoKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiA0Owo+PiArwqDCoMKgIH0K
Pj4gK30KPj4gKwo+PiArc3RhdGljIGludCBhZGRfcG9zc2libGVfYnJhbmNoKHN0cnVjdCBvYmp0
b29sX2ZpbGUgKmZpbGUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IGluc3RydWN0aW9uICppbnNuLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHUzMiBiYXNlLCBzNjQgb2Zmc2V0KQo+PiArewo+PiArwqDCoMKgIHN0cnVjdCBp
bnN0cnVjdGlvbiAqZGVzdF9pbnNuOwo+PiArwqDCoMKgIHN0cnVjdCBhbHRlcm5hdGl2ZSAqYWx0
Owo+PiArCj4+ICvCoMKgwqAgb2Zmc2V0ID0gYmFzZSArIDQgKiBvZmZzZXQ7Cj4+ICsKPj4gK8Kg
wqDCoCBkZXN0X2luc24gPSBmaW5kX2luc24oZmlsZSwgaW5zbi0+c2VjLCBvZmZzZXQpOwo+PiAr
wqDCoMKgIGlmICghZGVzdF9pbnNuKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+ICsK
Pj4gK8KgwqDCoCBhbHQgPSBjYWxsb2MoMSwgc2l6ZW9mKCphbHQpKTsKPj4gK8KgwqDCoCBpZiAo
IWFsdCkgewo+PiArwqDCoMKgwqDCoMKgwqAgV0FSTigiYWxsb2NhdGlvbiBmYWlsdXJlLCBjYW4n
dCBhZGQganVtcCBhbHRlcm5hdGl2ZSIpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC0xOwo+
PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIGFsdC0+aW5zbiA9IGRlc3RfaW5zbjsKPj4gK8Kg
wqDCoCBhbHQtPnNraXBfb3JpZyA9IHRydWU7Cj4+ICvCoMKgwqAgbGlzdF9hZGRfdGFpbCgmYWx0
LT5saXN0LCAmaW5zbi0+YWx0cyk7Cj4+ICvCoMKgwqAgcmV0dXJuIDA7Cj4+ICt9Cj4+ICsKPj4g
K3N0YXRpYyBzdHJ1Y3Qgc3dpdGNoX3RhYmxlX2luZm8gKmdldF9zd3RfaW5mbyhzdHJ1Y3Qgc2Vj
dGlvbiAKPj4gKnN3dF9pbmZvX3NlYywKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnN0cnVjdGlvbiAqaW5zbikKPj4gK3sKPj4g
K8KgwqDCoCB1NjQgKnRhYmxlX3JlZjsKPj4gKwo+PiArwqDCoMKgIGlmICghaW5zbi0+anVtcF90
YWJsZSkgewo+PiArwqDCoMKgwqDCoMKgwqAgV0FSTigibm8ganVtcCB0YWJsZSBhdmFpbGFibGUg
Zm9yICVzKzB4JWx4IiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnNuLT5zZWMtPm5h
bWUsIGluc24tPm9mZnNldCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gTlVMTDsKPj4gK8Kg
wqDCoCB9Cj4+ICvCoMKgwqAgdGFibGVfcmVmID0gKHZvaWQgKikoc3d0X2luZm9fc2VjLT5kYXRh
LT5kX2J1ZiArCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnNuLT5qdW1w
X3RhYmxlLT5vZmZzZXQpOwo+PiArwqDCoMKgIHJldHVybiBjb250YWluZXJfb2YodGFibGVfcmVm
LCBzdHJ1Y3Qgc3dpdGNoX3RhYmxlX2luZm8sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc3dpdGNoX3RhYmxlX3JlZik7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgYWRkX2Fy
bTY0X2p1bXBfdGFibGVfZGVzdHMoc3RydWN0IG9ianRvb2xfZmlsZSAqZmlsZSwKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW5zdHJ1Y3Rpb24g
Kmluc24pCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IHN3aXRjaF90YWJsZV9pbmZvICpzd3RfaW5m
bzsKPj4gK8KgwqDCoCBzdHJ1Y3Qgc2VjdGlvbiAqb2JqdG9vbF9kYXRhOwo+PiArwqDCoMKgIHN0
cnVjdCBzZWN0aW9uICpyb2RhdGFfc2VjOwo+PiArwqDCoMKgIHN0cnVjdCBzZWN0aW9uICpicmFu
Y2hfc2VjOwo+PiArwqDCoMKgIHN0cnVjdCBpbnN0cnVjdGlvbiAqcHJlX2p1bXBfaW5zbjsKPj4g
K8KgwqDCoCB1OCAqc3dpdGNoX3RhYmxlOwo+PiArwqDCoMKgIHUzMiBlbnRyeV9zaXplOwo+PiAr
Cj4+ICvCoMKgwqAgb2JqdG9vbF9kYXRhID0gZmluZF9zZWN0aW9uX2J5X25hbWUoZmlsZS0+ZWxm
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiLmRp
c2NhcmQuc3dpdGNoX3RhYmxlX2luZm8iKTsKPj4gK8KgwqDCoCBpZiAoIW9ianRvb2xfZGF0YSkK
Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiArCj4+ICvCoMKgwqAgLyoKPj4gK8KgwqDC
oMKgICogMS4gSWRlbnRpZnkgZW50cnkgZm9yIHRoZSBzd2l0Y2ggdGFibGUKPj4gK8KgwqDCoMKg
ICogMi4gUmV0cmlldmUgYnJhbmNoIGluc3RydWN0aW9uCj4+ICvCoMKgwqDCoCAqIDMuIFJldHJp
ZXZlIGJhc2Ugb2Zmc2V0Cj4+ICvCoMKgwqDCoCAqIDMuIEZvciBhbGwgZW50cmllcyBpbiBzd2l0
Y2ggdGFibGU6Cj4+ICvCoMKgwqDCoCAqwqDCoMKgwqAgMy4xLiBDb21wdXRlIG5ldyBvZmZzZXQK
Pj4gK8KgwqDCoMKgICrCoMKgwqDCoCAzLjIuIENyZWF0ZSBhbHRlcm5hdGl2ZSBpbnN0cnVjdGlv
bgo+PiArwqDCoMKgwqAgKsKgwqDCoMKgIDMuMy4gQWRkIGFsdF9pbnN0ciB0byBpbnNuLT5hbHRz
IGxpc3QKPj4gK8KgwqDCoMKgICovCj4+ICvCoMKgwqAgc3d0X2luZm8gPSBnZXRfc3d0X2luZm8o
b2JqdG9vbF9kYXRhLCBpbnNuKTsKPj4gKwo+PiArwqDCoMKgIC8qIHJldHJpZXZpbmcgcHJlIGp1
bXAgaW5zdHJ1Y3Rpb24gKGxkcikgKi8KPj4gK8KgwqDCoCBicmFuY2hfc2VjID0gaW5zbi0+c2Vj
Owo+PiArwqDCoMKgIHByZV9qdW1wX2luc24gPSBmaW5kX2luc24oZmlsZSwgYnJhbmNoX3NlYywK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW5zbi0+b2Zmc2V0IC0gMyAq
IHNpemVvZih1MzIpKTsKPj4gK8KgwqDCoCBlbnRyeV9zaXplID0gZ2V0X3RhYmxlX2VudHJ5X3Np
emUoKih1MzIgKikoYnJhbmNoX3NlYy0+ZGF0YS0+ZF9idWYgKwo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcmVfanVtcF9pbnNuLT5vZmZz
ZXQpKTsKPj4gKwo+PiArwqDCoMKgIC8qIHJldHJpZXZpbmcgc3dpdGNoIHRhYmxlIGNvbnRlbnQg
Ki8KPj4gK8KgwqDCoCByb2RhdGFfc2VjID0gZmluZF9zZWN0aW9uX2J5X25hbWUoZmlsZS0+ZWxm
LCAiLnJvZGF0YSIpOwo+PiArwqDCoMKgIHN3aXRjaF90YWJsZSA9ICh1OCAqKShyb2RhdGFfc2Vj
LT5kYXRhLT5kX2J1ZiArCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlu
c24tPmp1bXBfdGFibGUtPmFkZGVuZCk7Cj4+ICsKPj4gK8KgwqDCoCAvKgo+PiArwqDCoMKgwqAg
KiBpdGVyYXRpbmcgb3ZlciB0aGUgcHJlLWp1bXBzIGluc3RydWN0aW9uIGluIG9yZGVyIHRvCj4+
ICvCoMKgwqDCoCAqIHJldHJpZXZlIHN3aXRjaCBiYXNlIG9mZnNldC4KPj4gK8KgwqDCoMKgICov
Cj4+ICvCoMKgwqAgd2hpbGUgKHByZV9qdW1wX2luc24gJiYgcHJlX2p1bXBfaW5zbi0+b2Zmc2V0
IDw9IGluc24tPm9mZnNldCkgewo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGluc25faXNfYWRyX3Bj
cmVsKHByZV9qdW1wX2luc24pKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHU2NCBiYXNl
X29mZnNldDsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IGk7Cj4+ICsKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgYmFzZV9vZmZzZXQgPSBwcmVfanVtcF9pbnNuLT5vZmZzZXQgKwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByZV9qdW1wX2lu
c24tPmltbWVkaWF0ZTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKgo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICogT25jZSB3ZSBoYXZlIHRoZSBzd2l0Y2ggdGFibGUgZW50
cnkgc2l6ZQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogd2UgYWRkIGV2ZXJ5IHBvc3Np
YmxlIGRlc3RpbmF0aW9uIHVzaW5nCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBhbHRl
cm5hdGl2ZXMgb2YgdGhlIG9yaWdpbmFsIGJyYW5jaAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICogaW5zdHJ1Y3Rpb24KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgc3d0X2luZm8tPm5iX2VudHJpZXM7
IGkrKykgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHM2NCB0YWJsZV9vZmZz
ZXQgPSBuZXh0X29mZnNldChzd2l0Y2hfdGFibGUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnRyeV9zaXpl
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgIXN3dF9pbmZvLT5vZmZzZXRfdW5zaWduZWQpOwo+PiArCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGFkZF9wb3NzaWJsZV9icmFuY2goZmls
ZSwgaW5zbiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBiYXNlX29mZnNldCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0YWJsZV9vZmZzZXQpKSB7Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLTE7Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN3
aXRjaF90YWJsZSArPSBlbnRyeV9zaXplOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+PiArwqDCoMKgwqDCoMKgwqAgfQo+PiAr
wqDCoMKgwqDCoMKgwqAgcHJlX2p1bXBfaW5zbiA9IG5leHRfaW5zbl9zYW1lX3NlYyhmaWxlLCBw
cmVfanVtcF9pbnNuKTsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gMDsKPj4g
K30KPj4gwqAgaW50IGFyY2hfYWRkX2p1bXBfdGFibGVfZGVzdHMoc3RydWN0IG9ianRvb2xfZmls
ZSAqZmlsZSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0
IGluc3RydWN0aW9uICppbnNuKQo+PiDCoCB7Cj4+IC3CoMKgwqAgcmV0dXJuIDA7Cj4+ICvCoMKg
wqAgcmV0dXJuIGFkZF9hcm02NF9qdW1wX3RhYmxlX2Rlc3RzKGZpbGUsIGluc24pOwo+PiDCoCB9
Cj4+ICtzdGF0aWMgc3RydWN0IHJlbGEgKmZpbmRfc3d0X2luZm9fanVtcF9yZWxhKHN0cnVjdCBz
ZWN0aW9uIAo+PiAqc3d0X2luZm9fc2VjLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB1MzIgaW5kZXgpCj4+ICt7Cj4+ICvCoMKgwqAgdTMyIHJlbGFf
b2Zmc2V0Owo+PiArCj4+ICvCoMKgwqAgcmVsYV9vZmZzZXQgPSBpbmRleCAqIHNpemVvZihzdHJ1
Y3Qgc3dpdGNoX3RhYmxlX2luZm8pICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9m
ZnNldG9mKHN0cnVjdCBzd2l0Y2hfdGFibGVfaW5mbywgZHluX2p1bXBfcmVmKTsKPj4gK8KgwqDC
oCByZXR1cm4gZmluZF9yZWxhX2J5X2Rlc3Qoc3d0X2luZm9fc2VjLCByZWxhX29mZnNldCk7Cj4+
ICt9Cj4+ICsKPj4gK3N0YXRpYyBzdHJ1Y3QgcmVsYSAqZmluZF9zd3RfaW5mb190YWJsZV9yZWxh
KHN0cnVjdCBzZWN0aW9uIAo+PiAqc3d0X2luZm9fc2VjLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiBpbmRleCkKPj4gK3sKPj4gK8KgwqDC
oCB1MzIgcmVsYV9vZmZzZXQ7Cj4+ICsKPj4gK8KgwqDCoCByZWxhX29mZnNldCA9IGluZGV4ICog
c2l6ZW9mKHN0cnVjdCBzd2l0Y2hfdGFibGVfaW5mbykgKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgb2Zmc2V0b2Yoc3RydWN0IHN3aXRjaF90YWJsZV9pbmZvLCBzd2l0Y2hfdGFibGVf
cmVmKTsKPj4gK8KgwqDCoCByZXR1cm4gZmluZF9yZWxhX2J5X2Rlc3Qoc3d0X2luZm9fc2VjLCBy
ZWxhX29mZnNldCk7Cj4+ICt9Cj4+ICsKPj4gKy8qCj4+ICsgKiBBYXJjaDY0IGp1bXAgdGFibGVz
IGFyZSBqdXN0IGFycmF5cyBvZiBvZmZzZXRzIChvZiB2YXJ5aW5nIAo+PiBzaXplL3NpZ25lc3Mp
Cj4+ICsgKiByZXByZXNlbnRpbmcgdGhlIHBvdGVudGlhbCBkZXN0aW5hdGlvbiBmcm9tIGEgYmFz
ZSBhZGRyZXNzIGxvYWRlZCAKPj4gYnkgYW4gYWRyCj4+ICsgKiBpbnN0cnVjdGlvbi4KPj4gKyAq
Cj4+ICsgKiBBYXJjaDY0IGJyYW5jaGVzIHRvIGp1bXAgdGFibGVzIGFyZSBjb21wb3NlZCBvZiBt
dWx0aXBsZSAKPj4gaW5zdHJ1Y3Rpb25zOgo+PiArICoKPj4gKyAqwqDCoMKgwqAgbGRyPD8+wqAg
eF9vZmZzZXQsIFt4X29mZnNldHNfdGFibGUsIHhfaW5kZXgsIC4uLl0KPj4gKyAqwqDCoMKgwqAg
YWRywqDCoMKgwqAgeF9kZXN0X2Jhc2UsIDxhZGRyPgo+PiArICrCoMKgwqDCoCBhZGTCoMKgwqDC
oCB4X2Rlc3QsIHhfdGFyZ2V0X2Jhc2UsIHhfb2Zmc2V0LCAuLi4KPj4gKyAqwqDCoMKgwqAgYnLC
oMKgwqDCoMKgIHhfZGVzdAo+PiArICoKPj4gKyAqIFRoZSBhcm02NF9zd2l0Y2hfdGFibGVfZGV0
ZWN0aW9uX3BsdWdpbiB3aWxsIG1ha2UgdGhlIGNvbm5lY3Rpb24gCj4+IGJldHdlZW4KPj4gKyAq
IHRoZSBpbnN0cnVjdGlvbiBzZXR0aW5nIHhfb2Zmc2V0c190YWJsZSAoZHluX2p1bXBfcmVmKSBh
bmQgdGhlIGFjdHVhbAo+PiArICogdGFibGUgb2Ygb2Zmc2V0cyAoc3dpdGNoX3RhYmxlX3JlZikK
Pj4gKyAqLwo+PiDCoCBzdHJ1Y3QgcmVsYSAqYXJjaF9maW5kX3N3aXRjaF90YWJsZShzdHJ1Y3Qg
b2JqdG9vbF9maWxlICpmaWxlLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGluc3RydWN0aW9uICppbnNuKQo+PiDCoCB7Cj4+IC3CoMKgwqAgcmV0
dXJuIE5VTEw7Cj4+ICvCoMKgwqAgc3RydWN0IHNlY3Rpb24gKm9ianRvb2xfZGF0YTsKPj4gK8Kg
wqDCoCBzdHJ1Y3QgcmVsYSAqcmVzID0gTlVMTDsKPj4gK8KgwqDCoCB1MzIgbmJfc3d0X2VudHJp
ZXMgPSAwOwo+PiArwqDCoMKgIHUzMiBpOwo+PiArCj4+ICvCoMKgwqAgb2JqdG9vbF9kYXRhID0g
ZmluZF9zZWN0aW9uX2J5X25hbWUoZmlsZS0+ZWxmLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiLmRpc2NhcmQuc3dpdGNoX3RhYmxlX2luZm8iKTsK
Pj4gK8KgwqDCoCBpZiAob2JqdG9vbF9kYXRhKQo+PiArwqDCoMKgwqDCoMKgwqAgbmJfc3d0X2Vu
dHJpZXMgPSBvYmp0b29sX2RhdGEtPnNoLnNoX3NpemUgLwo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgc2l6ZW9mKHN0cnVjdCBzd2l0Y2hfdGFibGVfaW5mbyk7Cj4+ICsKPj4g
K8KgwqDCoCBmb3IgKGkgPSAwOyBpIDwgbmJfc3d0X2VudHJpZXM7IGkrKykgewo+PiArwqDCoMKg
wqDCoMKgwqAgc3RydWN0IHJlbGEgKmluZm9fcmVsYTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAg
aW5mb19yZWxhID0gZmluZF9zd3RfaW5mb19qdW1wX3JlbGEob2JqdG9vbF9kYXRhLCBpKTsKPj4g
K8KgwqDCoMKgwqDCoMKgIGlmIChpbmZvX3JlbGEgJiYgaW5mb19yZWxhLT5zeW0tPnNlYyA9PSBp
bnNuLT5zZWMgJiYKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW5mb19yZWxhLT5hZGRlbmQg
PT0gaW5zbi0+b2Zmc2V0KSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXMpIHsK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBXQVJOX0ZVTkMoImR1cGxpY2F0ZSBv
Ymp0b29sX2RhdGEgcmVsYSIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaW5mb19yZWxhLT5zZWMsIGluZm9fcmVsYS0+b2Zmc2V0KTsKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXMgPSBmaW5kX3N3dF9pbmZvX3RhYmxl
X3JlbGEob2JqdG9vbF9kYXRhLCBpKTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFy
ZXMpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgV0FSTl9GVU5DKCJtaXNzaW5n
IHJlbG9jYXRpb24gaW4gb2JqdG9vbCBkYXRhIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpbmZvX3JlbGEtPnNlYywgaW5mb19yZWxhLT5vZmZzZXQpOwo+
PiArwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIHJldHVybiBy
ZXM7Cj4+IMKgIH0KPj4gZGlmZiAtLWdpdCBhL3Rvb2xzL29ianRvb2wvYXJjaC9hcm02NC9pbmNs
dWRlL2FyY2hfc3BlY2lhbC5oIAo+PiBiL3Rvb2xzL29ianRvb2wvYXJjaC9hcm02NC9pbmNsdWRl
L2FyY2hfc3BlY2lhbC5oCj4+IGluZGV4IGE4MmE5YjNlNTFkZi4uYjk2YmNlZTMwOGNmIDEwMDY0
NAo+PiAtLS0gYS90b29scy9vYmp0b29sL2FyY2gvYXJtNjQvaW5jbHVkZS9hcmNoX3NwZWNpYWwu
aAo+PiArKysgYi90b29scy9vYmp0b29sL2FyY2gvYXJtNjQvaW5jbHVkZS9hcmNoX3NwZWNpYWwu
aAo+PiBAQCAtMyw2ICszLDggQEAKPj4gwqAgI2lmbmRlZiBfQVJNNjRfQVJDSF9TUEVDSUFMX0gK
Pj4gwqAgI2RlZmluZSBfQVJNNjRfQVJDSF9TUEVDSUFMX0gKPj4gKyNpbmNsdWRlIDxsaW51eC90
eXBlcy5oPgo+PiArCj4+IMKgICNkZWZpbmUgRVhfRU5UUllfU0laRcKgwqDCoMKgwqDCoMKgIDgK
Pj4gwqAgI2RlZmluZSBFWF9PUklHX09GRlNFVMKgwqDCoMKgwqDCoMKgIDAKPj4gwqAgI2RlZmlu
ZSBFWF9ORVdfT0ZGU0VUwqDCoMKgwqDCoMKgwqAgNAo+PiBkaWZmIC0tZ2l0IGEvdG9vbHMvb2Jq
dG9vbC9jaGVjay5jIGIvdG9vbHMvb2JqdG9vbC9jaGVjay5jCj4+IGluZGV4IGUwYzZiZGEyNjFj
OC4uODBlYTViYmQzNmFiIDEwMDY0NAo+PiAtLS0gYS90b29scy9vYmp0b29sL2NoZWNrLmMKPj4g
KysrIGIvdG9vbHMvb2JqdG9vbC9jaGVjay5jCj4+IEBAIC0zMyw4ICszMyw4IEBAIHN0cnVjdCBp
bnN0cnVjdGlvbiAqZmluZF9pbnNuKHN0cnVjdCBvYmp0b29sX2ZpbGUgCj4+ICpmaWxlLAo+PiDC
oMKgwqDCoMKgIHJldHVybiBOVUxMOwo+PiDCoCB9Cj4+IC1zdGF0aWMgc3RydWN0IGluc3RydWN0
aW9uICpuZXh0X2luc25fc2FtZV9zZWMoc3RydWN0IG9ianRvb2xfZmlsZSAqZmlsZSwKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBp
bnN0cnVjdGlvbiAqaW5zbikKPj4gK3N0cnVjdCBpbnN0cnVjdGlvbiAqbmV4dF9pbnNuX3NhbWVf
c2VjKHN0cnVjdCBvYmp0b29sX2ZpbGUgKmZpbGUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW5zdHJ1Y3Rpb24gKmluc24pCj4+IMKgIHsK
Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaW5zdHJ1Y3Rpb24gKm5leHQgPSBsaXN0X25leHRfZW50cnko
aW5zbiwgbGlzdCk7Cj4+IGRpZmYgLS1naXQgYS90b29scy9vYmp0b29sL2NoZWNrLmggYi90b29s
cy9vYmp0b29sL2NoZWNrLmgKPj4gaW5kZXggOTFhZGVjNDI3ODJjLi4xNTE2NWQwNGQ5Y2IgMTAw
NjQ0Cj4+IC0tLSBhL3Rvb2xzL29ianRvb2wvY2hlY2suaAo+PiArKysgYi90b29scy9vYmp0b29s
L2NoZWNrLmgKPj4gQEAgLTY2LDYgKzY2LDggQEAgaW50IGNoZWNrKGNvbnN0IGNoYXIgKm9iam5h
bWUsIGJvb2wgb3JjKTsKPj4gwqAgc3RydWN0IGluc3RydWN0aW9uICpmaW5kX2luc24oc3RydWN0
IG9ianRvb2xfZmlsZSAqZmlsZSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc3RydWN0IHNlY3Rpb24gKnNlYywgdW5zaWduZWQgbG9uZyBvZmZzZXQpOwo+PiArc3Ry
dWN0IGluc3RydWN0aW9uICpuZXh0X2luc25fc2FtZV9zZWMoc3RydWN0IG9ianRvb2xfZmlsZSAq
ZmlsZSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0
cnVjdCBpbnN0cnVjdGlvbiAqaW5zbik7Cj4+IMKgICNkZWZpbmUgZm9yX2VhY2hfaW5zbihmaWxl
LCBpbnNuKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwKPj4gwqDCoMKg
wqDCoCBsaXN0X2Zvcl9lYWNoX2VudHJ5KGluc24sICZmaWxlLT5pbnNuX2xpc3QsIGxpc3QpCj4+
Cj4gCj4gQ2hlZXJzLAo+IAoKLS0gCkp1bGllbiBUaGllcnJ5CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
