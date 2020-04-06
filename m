Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5521619F1B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 10:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n+W6jLqDZfWY73y9xs2OiZwwzvfO89PsvJE55gDVXvI=; b=tV8JeQpY57L2yhzIr7h0tiDgZ
	7FXAOGupGMog/1+rQeDVnlrutXk67g5whszZ2jFMy2v3m436epQ/vhGvjFDqRIY/dDm+CtgqVDcg6
	ODKYizLFrm+a5GBWNZqt9hB1Geu1XRJTAw7Zlq1C5/gUmAUiNvxpYRnwj+UYJdr2z1NKi/jbt+p0c
	DiCuRVvZF4OtAxvG6PgcGHISdojGbJ5yO1v65c/ylzE8kGtOj2GwJR+/thh+Efjkah7yHbjRZ5vJL
	QBVtTxJrUqGYLvKHHCPYDyuJ569MmD26fht3CClnZ6z/bHDFHfbctQQKDaQyoNjZAM86MNbYbiE/n
	rciICajmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLNIA-0001jH-1H; Mon, 06 Apr 2020 08:39:38 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNHz-0001iv-KW
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 08:39:29 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6516BEF633551400EA25;
 Mon,  6 Apr 2020 16:39:20 +0800 (CST)
Received: from [127.0.0.1] (10.133.217.205) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0;
 Mon, 6 Apr 2020 16:39:12 +0800
Subject: Re: Why is text_mutex used in jump_label_transform for x86_64
To: Peter Zijlstra <peterz@infradead.org>
References: <f7f686f2-4f28-1763-dd19-43eff6a5a8f2@huawei.com>
 <20200320102709.GC20696@hirez.programming.kicks-ass.net>
From: "chengjian (D)" <cj.chengjian@huawei.com>
Message-ID: <28edc3d5-83a3-43cb-3e64-7d0525d430f3@huawei.com>
Date: Mon, 6 Apr 2020 16:39:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200320102709.GC20696@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-Originating-IP: [10.133.217.205]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_013927_864850_A7898ED4 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: jakub.kicinski@netronome.com, Kees Cook <keescook@chromium.org>,
 "Xiexiuqi \(Xie XiuQi\)" <xiexiuqi@huawei.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bobo.shaobowang@huawei.com, Li Bin <huawei.libin@huawei.com>,
 andrew.murray@arm.com, bristot@redhat.com,
 linux-arm-kernel@lists.infradead.org,
 "chengjian \(D\)" <cj.chengjian@huawei.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMy8yMCAxODoyNywgUGV0ZXIgWmlqbHN0cmEgd3JvdGU6Cj4gSXQgZGVwZW5kcyBv
biB0aGUgYXJjaGl0ZWN0dXJlIGRldGFpbHMgb2YgaG93IHNlbGYtbW9kaWZ5aW5nIGNvZGUgd29y
a3MuCj4gSW4gcGFydGljdWxhciwgeDg2IGlzIGEgdmFyaWFibGUgaW5zdHJ1Y3Rpb24gbGVuZ3Ro
IGFyY2hpdGVjdHVyZSBhbmQKPiBuZWVkcyBleHRyZW1lIGNhcmUgLS0gaXQncyBpbXBsZW1lbnRh
dGlvbiByZXF1aXJlcyB0aGVyZSBvbmx5IGJlIGEKPiBzaW5nbGUgdGV4dCBtb2RpZmllciBhdCBh
bnkgb25lIHRpbWUsIGhlbmNlIHRoZSB1c2Ugb2YgdGV4dF9tdXRleC4KPgo+IEFSTTY0IE9UT0gg
aXMsIGxpa2UgbW9zdCBSSVNDIGJhc2VkIGFyY2hpdGVjdHVyZXMsIGEgZml4ZWQgd2lkdGgKPiBp
bnN0cnVjdGlvbiBhcmNoaXRlY3R1cmUuIEFuZCBpbiBwYXJ0aWN1bGFyIGl0IGNhbiByZS13cml0
ZSBjZXJ0YWluCj4gKGJyYW5jaCkgaW5zdHJ1Y3Rpb25zIHdpdGggaW1wdW5pdHkgKHNlZSB0aGVp
cgo+IGFhcmNoNjRfaW5zbl9wYXRjaF90ZXh0X25vc3luYygpKS4gV2hpY2ggaXMgd2h5IHRoZXkg
ZG9uJ3QgbmVlZAo+IGFkZGl0aW9uYWwgc2VyaWFsaXphdGlvbi4KCkhpLCBQZXRlcgoKVGhhbmsg
eW91IHZlcnkgbXVjaCBmb3IgeW91ciByZXBseS4KClg4NiBpcyBhIHZhcmlhYmxlLWxlbmd0aCBp
bnN0cnVjdGlvbiwgb25seSBvbmUgYnl0ZSBtb2RpZmljYXRpb24gb2YgdGhlIAppbnN0cnVjdGlv
bgpjYW4gYmUgcmVnYXJkZWQgYXMgYXRvbWljLiBzbyB3ZSBtdXN0IGJlIHZlcnkgY2FyZWZ1bCB3
aGVuIG1vZGlmeWluZyAKaW5zdHJ1Y3Rpb25zCmNvbmN1cnJlbnRseS4KCkZvciBvdGhlciBhcmNo
aXRlY3R1cmVzIHN1Y2ggYXMgQVJNNjQsIHRoZSBtb2RpZmljYXRpb24gb2Ygc29tZSAKaW5zdHJ1
Y3Rpb25zIGNhbiBiZQpjb25zaWRlcmVkIGF0b21pYywgKEVnLiBub3AgLT4gam1wL2IpLiBUaGUg
c2V0IG9mIGluc3RydWN0aW9ucyB0aGF0IGNhbiAKYmUgZXhlY3V0ZWQKYnkgb25lIHRocmVhZCBv
ZiBleGVjdXRpb24gYXMgdGhleSBhcmUgYmVpbmcgbW9kaWZpZWQgYnkgYW5vdGhlciB0aHJlYWQg
Cm9mIGV4ZWN1dGlvbgp3aXRob3V0IHJlcXVpcmluZyBleHBsaWNpdCBzeW5jaHJvbml6YXRpb24u
CgpJbiBBUk02NCBBcmNoaXRlY3R1cmUgUmVmZXJlbmNlIE1hbnVhbCwgSSBmaW5kIHRoYXQ6CiDC
oMKgwqAgQ29uY3VycmVudCBtb2RpZmljYXRpb24gYW5kIGV4ZWN1dGlvbiBvZiBpbnN0cnVjdGlv
bnMgY2FuIGxlYWQgdG8gCnRoZSByZXN1bHRpbmcgaW5zdHJ1Y3Rpb24gcGVyZm9ybWluZyBhbnkg
YmVoYXZpb3IKIMKgwqDCoCB0aGF0IGNhbiBiZSBhY2hpZXZlZCBieSBleGVjdXRpbmcgYW55IHNl
cXVlbmNlIG9mIGluc3RydWN0aW9ucyB0aGF0IApjYW4gYmUgZXhlY3V0ZWQgZnJvbSB0aGUgc2Ft
ZSBFeGNlcHRpb24gbGV2ZWwsCiDCoMKgwqAgZXhjZXB0IHdoZXJlIGVhY2ggb2YgdGhlIGluc3Ry
dWN0aW9uIGJlZm9yZSBtb2RpZmljYXRpb24gYW5kIHRoZSAKaW5zdHJ1Y3Rpb24gYWZ0ZXIgbW9k
aWZpY2F0aW9uIGlzIG9uZSBvZiBhIEIsIEJMLCBCUkssCiDCoMKgwqAgSFZDLCBJU0IsIE5PUCwg
U01DLCBvciBTVkMgaW5zdHJ1Y3Rpb24uCiDCoMKgwqAgRm9yIHRoZSBCLCBCTCwgQlJLLCBIVkMs
IElTQiwgTk9QLCBTTUMsIGFuZCBTVkMgaW5zdHJ1Y3Rpb25zIHRoZSAKYXJjaGl0ZWN0dXJlIGd1
YXJhbnRlZXMgdGhhdCwgYWZ0ZXIgbW9kaWZpY2F0aW9uIG9mIHRoZQogwqDCoMKgIGluc3RydWN0
aW9uLCBiZWhhdmlvciBpcyBjb25zaXN0ZW50IHdpdGggZXhlY3V0aW9uIG9mIGVpdGhlcjoKIMKg
wqDCoCDigKIgVGhlIGluc3RydWN0aW9uIG9yaWdpbmFsbHkgZmV0Y2hlZC4KIMKgwqDCoCDigKIg
QSBmZXRjaCBvZiB0aGUgbW9kaWZpZWQgaW5zdHJ1Y3Rpb24KClNvIHdlIGNhbiBzYWZlbHkgbW9k
aWZ5IGp1bXBfbGFiZWwgZm9yIEFSTTY0KGZyb20gTk9QIHRvIGIgb3IgZm9ybSBiIHRvIApOT1Ap
LgoKSXMgbXkgdW5kZXJzdGFuZGluZyBjb3JyZWN0PwoKCgpUaGFuayBZb3UKCiDCoMKgwqAgLS0g
Q2hlbmcgSmlhbgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
