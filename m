Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2F95F1A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 05:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bX7NHFWAuSvDIIW1lUZtDTmwj57dUy67ACr4MZ0Xx00=; b=b5eM9HXT38GsNl1mV9Stdbvfo
	H2pokxAqDo61zuoukuP+pM391fTQ2lRaxkyIHIdy/BCnzY/AG3MRn6ZQJp66ZZjRfwQz9A55KczL0
	aMzg4g8Oq6rXxDc4QOKQijaEHzFsDzsXRWAw6ZBTO2GufqUVC2p5TCndPT5/VaQKtgQ7TSaQhcEx7
	ESv/kSqwF4dH1CejJeB9ZaVfuSc8Fn/59Duug03GFGEw4s82bn/LKXfrh5o997A/bYWCs4XZblDlW
	xQQNMOcg5S6trExFnv3YRagKpJ0xwF/vVbrUCvoPlaTnD+eP4K+scrNgxa0pwfgytt3JljBb/Je60
	NY9C9j3gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hirzK-0004wV-Bj; Thu, 04 Jul 2019 03:00:46 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hirz4-0004vi-T6
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 03:00:32 +0000
Received: by mail-pf1-x443.google.com with SMTP id x15so2229054pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 20:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=ulgkacOC9MVQoeI7C3VdBpGEpxQUJnlA06nqtcm87I8=;
 b=DsYC2ozCdkMop+Za96eslk9BJsSKBWurQHezKCWW6geGoOfVIeuhxl4Sp5lHF39jBT
 9jgWopa5+cFAjZU5L9ZpZVUj8FUFZQtcURCTsffBbsSNQzvDgi5kcMTLPuJZ8REmXb5D
 r7/jyERNtwW5tfiNJA+QAlS3h0I0RVFUpeEBxJ57+MiQQZ69Di60oDmw2/e8H6IVntQK
 ijkqibXJn6OXEIuqNhVn67kGhBLKwB1xJqUxmOkmGjwq63eDwaGHpSPR2vXOwWKGEU1d
 wIc+Cx7ljseODdcbgFRO0t7bqtYTHfj7kz3Glp4peMDNx+oeX262DOzZLrPM1j8XIfoC
 M73A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding;
 bh=ulgkacOC9MVQoeI7C3VdBpGEpxQUJnlA06nqtcm87I8=;
 b=Kik4gkW5BWSj4iLO8HR+X8kYuLq6XSGAf+MDsPjlQOXheYjomof7vJowO3zATTMVT/
 9WVDxBJXdNX5zAhDcZe/vg2GxcpXa8oRnVZSZE2qCoaiieI7HghRP48E0a6pDDjfS+kw
 Df4xQ46kKBYwIEPWpyo1F4y9YVXrjVyAsVVyz8TxNaxKlMgFEzILkA4RNE6GCM1M4WKq
 ojLSaLbwhYJIkbldP/LMpX3Surta+wZLGruyZ6mNHX+6IJoasCxk+LmVMujJ3nAjsnc4
 f6hyXRbslYkzoXxxkGjjeD0EbEzGKoAfT89ZbgMmn+3YbkBCa8ZH7tB6bGj0MQbwZnAN
 EdMw==
X-Gm-Message-State: APjAAAVfme9CS+303FClErGVj3VXYBu71AR1WRzhnIBrJhhPO3IwWWO0
 2K8WF2fME06/sfBWbPAhOZyHdGw3
X-Google-Smtp-Source: APXvYqwFIuhyG5fIhnFFFWROZCNEDtg0pyhsJMvdB6pyvQ5FrQPtPEQhiWU5qPE4sfConRMZZRdUMg==
X-Received: by 2002:a63:6986:: with SMTP id
 e128mr42386432pgc.220.1562209228925; 
 Wed, 03 Jul 2019 20:00:28 -0700 (PDT)
Received: from [0.0.0.0] ([80.240.31.150])
 by smtp.gmail.com with ESMTPSA id z13sm3247183pjn.32.2019.07.03.20.00.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 20:00:27 -0700 (PDT)
Subject: Re: [PATCH RFC 0/3] Support CPU hotplug for ARM64
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>, rjw@rjwysocki.net,
 catalin.marinas@arm.com, james.morse@arm.com
References: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
From: Jia He <hejianet@gmail.com>
Organization: ARM
Message-ID: <2b22cf4d-9646-9f20-41ae-cceb83d9791b@gmail.com>
Date: Thu, 4 Jul 2019 11:00:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_200030_941765_35DE73F0 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hejianet[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWGlvbmdmZW5nCgpJdCBpcyBhIGxpdHRsZSBiaXQgYXdrZnVsIHRoYXQgSSBhbSBhbHNvwqAg
aW52ZXN0aWdhdGluZyBhY3BpIGJhc2VkIGNwdSBob3RwbHVnIAppc3N1ZSBzaWxpbWFyIHdpdGgK
CnlvdXIgaWRlYS4gTXkgcXVlc3Rpb24gaXMgeW91ciBwdXJwb3NlIHRvIGltcGxlbWVudCB0aGUg
dmNwdSBob3RwbHVnIGluIGFybTY0IHFlbXU/CgpUaGFua3MgZm9yIHRoZSBlbGxhYm9yYXRpb24K
Ci0tLQpDaGVlcnMsCkp1c3RpbiAoSmlhIEhlKQoKT24gMjAxOS82LzI4IDE5OjEzLCBYaW9uZ2Zl
bmcgV2FuZyB3cm90ZToKPiBUaGlzIHBhdGNoc2V0IG1hcmsgYWxsIHRoZSBHSUNDIG5vZGUgaW4g
TUFEVCBhcyBwb3NzaWJsZSBDUFVzIGV2ZW4gdGhvdWdoIGl0Cj4gaXMgZGlzYWJsZWQuIEJ1dCBv
bmx5IHRob3NlIGVuYWJsZWQgR0lDQyBub2RlIGFyZSBtYXJrZWQgYXMgcHJlc2VudCBDUFVzLgo+
IFNvIHRoYXQga2VybmVsIHdpbGwgaW5pdGlhbGl6ZSBzb21lIENQVSByZWxhdGVkIGRhdGEgc3Ry
dWN0dXJlIGluIGFkdmFuY2UgYmVmb3JlCj4gdGhlIENQVSBpcyBhY3R1YWxseSBob3QgYWRkZWQg
aW50byB0aGUgc3lzdGVtLiBUaGlzIHBhdGNoc2V0IGFsc28gaW1wbGVtZW50Cj4gJ2FjcGlfKHVu
KW1hcF9jcHUoKScgYW5kICdhcmNoXyh1bilyZWdpc3Rlcl9jcHUoKScgZm9yIEFSTTY0LiBUaGVz
ZSBmdW5jdGlvbnMgYXJlCj4gbmVlZGVkIHRvIGVuYWJsZSBDUFUgaG90cGx1Zy4KPgo+IFRvIHN1
cHBvcnQgQ1BVIGhvdHBsdWcsIHdlIG5lZWQgdG8gYWRkIGFsbCB0aGUgcG9zc2libGUgR0lDQyBu
b2RlIGluIE1BRFQKPiBpbmNsdWRpbmcgdGhvc2UgQ1BVcyB0aGF0IGFyZSBub3QgcHJlc2VudCBi
dXQgbWF5IGJlIGhvdCBhZGRlZCBsYXRlci4gVGhvc2UKPiBDUFVzIGFyZSBtYXJrZWQgYXMgZGlz
YWJsZWQgaW4gR0lDQyBub2Rlcy4KPgo+IFhpb25nZmVuZyBXYW5nICgzKToKPiAgICBBQ1BJIC8g
c2NhbjogZXZhbHVhdGUgX1NUQSBmb3IgcHJvY2Vzc29ycyBkZWNsYXJlZCB2aWEgQVNMIERldmlj
ZQo+ICAgICAgc3RhdGVtZW50Cj4gICAgYXJtNjQ6IG1hcmsgYWxsIHRoZSBHSUNDIG5vZGVzIGlu
IE1BRFQgYXMgcG9zc2libGUgY3B1Cj4gICAgYXJtNjQ6IEFkZCBDUFUgaG90cGx1ZyBzdXBwb3J0
Cj4KPiAgIGFyY2gvYXJtNjQva2VybmVsL2FjcGkuYyAgfCAyMiArKysrKysrKysrKysrKysrKysr
KysrCj4gICBhcmNoL2FybTY0L2tlcm5lbC9zZXR1cC5jIHwgMTkgKysrKysrKysrKysrKysrKysr
LQo+ICAgYXJjaC9hcm02NC9rZXJuZWwvc21wLmMgICB8IDExICsrKysrLS0tLS0tCj4gICBkcml2
ZXJzL2FjcGkvc2Nhbi5jICAgICAgIHwgMTIgKysrKysrKysrKysrCj4gICA0IGZpbGVzIGNoYW5n
ZWQsIDU3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
