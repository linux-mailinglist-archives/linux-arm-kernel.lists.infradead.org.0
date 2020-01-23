Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7C1146F45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 18:13:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5+iKRdtmDz/NNijknbciJ+QeTv904p0J8W0YSxkYHM=; b=QWUcH6toqCbhn3
	7FOLba04GarypXuQggjCHdPw/kWHiaXZJJW3B0hoUKWsAGQ6PASya6G9AZEBEqgrYr7pXrursnZcb
	y1hE49ODqrayXOJ9OJA7khscIJYLvtpZQI3RgZro5P/4nsTTniCE0f4JCMvYjwdj7St1h4UTO7et4
	/JN20YtmRhYWtWEt9OfAhzwL+ZHNA68gvuIQYJf4En5MDNtYnhwWYJ+Aac9rJdDlfIMNi6zhubeXV
	aPauor6CW/GdSzLraib4JnvTjnfUJcPwp0u83HIXETqjv5QM51aA46o0/gKgkmITTZqYE1b0W25it
	5FFqL2wJBEDIRwDZAlsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iug2U-00087X-23; Thu, 23 Jan 2020 17:13:06 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iug2K-00082X-En
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 17:12:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579799574;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2gQFOE3eZCJDYvBNgH30Kf453Z08E1vS+GpfLhJCCns=;
 b=Md4n9dpaA6JK/iVlscx6JNWQzwuoQsPwkdlHVlni+sg6kBaHtMw0MESOG88ButNcUPsFOu
 XKbDAJOBOil0g57M8mKz5TIV/Ya+fO/yqVzRgKS5ODM7EFNvuuM9GQVPZfcnUQS8v7+K7Z
 FRr/I5m7BVTqg5h8bmxh9Q9vEhgJQjw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-Nj5iUlfuN1GS-F4u-sFSkw-1; Thu, 23 Jan 2020 12:11:05 -0500
X-MC-Unique: Nj5iUlfuN1GS-F4u-sFSkw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 64AA618B6396;
 Thu, 23 Jan 2020 17:11:04 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B4CB8CCE3;
 Thu, 23 Jan 2020 17:11:03 +0000 (UTC)
Subject: Re: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
To: Qian Cai <cai@lca.pw>, peterz@infradead.org
References: <20200123162945.7705-1-cai@lca.pw>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <2fe3a534-feb6-490c-71c6-208607e6cdf6@redhat.com>
Date: Thu, 23 Jan 2020 12:11:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200123162945.7705-1-cai@lca.pw>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_091256_574140_3BD86D97 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, mingo@redhat.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS8yMy8yMCAxMToyOSBBTSwgUWlhbiBDYWkgd3JvdGU6Cj4gVGhlIGNvbW1pdCBmNWJmZGM4
ZTM5NDcgKCJsb2NraW5nL29zcTogVXNlIG9wdGltaXplZCBzcGlubmluZyBsb29wIGZvcgo+IGFy
bTY0IikgaW50cm9kdWNlZCBhIHdhcm5pbmcgZnJvbSBDbGFuZyBiZWNhdXNlIHZjcHVfaXNfcHJl
ZW1wdGVkKCkgaXMKPiBjb21waWxlZCBhd2F5LAo+Cj4ga2VybmVsL2xvY2tpbmcvb3NxX2xvY2su
YzoyNToxOTogd2FybmluZzogdW51c2VkIGZ1bmN0aW9uICdub2RlX2NwdScKPiBbLVd1bnVzZWQt
ZnVuY3Rpb25dCj4gc3RhdGljIGlubGluZSBpbnQgbm9kZV9jcHUoc3RydWN0IG9wdGltaXN0aWNf
c3Bpbl9ub2RlICpub2RlKQo+ICAgICAgICAgICAgICAgICAgIF4KPiAxIHdhcm5pbmcgZ2VuZXJh
dGVkLgo+Cj4gU2luY2UgdmNwdV9pc19wcmVlbXB0ZWQoKSBoYWQgYWxyZWFkeSBiZWVuIGRlZmlu
ZWQgaW4KPiBpbmNsdWRlL2xpbnV4L3NjaGVkLmggYXMgZmFsc2UsIGp1c3QgY29tbWVudCBvdXQg
dGhlIHJlZHVuZGFudCBtYWNybywgc28KPiBpdCBjYW4gc3RpbGwgYmUgc2VydmVkIGZvciB0aGUg
ZG9jdW1lbnRhdGlvbiBwdXJwb3NlLgo+Cj4gRml4ZXM6IGY1YmZkYzhlMzk0NyAoImxvY2tpbmcv
b3NxOiBVc2Ugb3B0aW1pemVkIHNwaW5uaW5nIGxvb3AgZm9yIGFybTY0IikKPiBTaWduZWQtb2Zm
LWJ5OiBRaWFuIENhaSA8Y2FpQGxjYS5wdz4KPiAtLS0KPiAgYXJjaC9hcm02NC9pbmNsdWRlL2Fz
bS9zcGlubG9jay5oIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3Bp
bmxvY2suaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3BpbmxvY2suaAo+IGluZGV4IDEwMjQw
NGRjMWUxMy4uYjA1ZjgyZThiYTE5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9h
c20vc3BpbmxvY2suaAo+ICsrKyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3BpbmxvY2suaAo+
IEBAIC0xNyw3ICsxNyw4IEBACj4gICAqCj4gICAqIFNlZToKPiAgICogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGttbC8yMDIwMDExMDEwMDYxMi5HQzI4MjdAaGlyZXoucHJvZ3JhbW1pbmcua2lj
a3MtYXNzLm5ldAo+ICsgKgo+ICsgKiAjZGVmaW5lIHZjcHVfaXNfcHJlZW1wdGVkKGNwdSkJZmFs
c2UKPiAgICovCj4gLSNkZWZpbmUgdmNwdV9pc19wcmVlbXB0ZWQoY3B1KQlmYWxzZQo+ICAKPiAg
I2VuZGlmIC8qIF9fQVNNX1NQSU5MT0NLX0ggKi8KCkRvZXMgYWRkaW5nIGEgX19tYXliZV91bnVz
ZWQgdGFnIGhlbHAgdG8gcHJldmVudCB0aGUgd2FybmluZz8gTGlrZQoKZGlmZiAtLWdpdCBhL2tl
cm5lbC9sb2NraW5nL29zcV9sb2NrLmMgYi9rZXJuZWwvbG9ja2luZy9vc3FfbG9jay5jCmluZGV4
IDZlZjYwMGFhMGY0Ny4uMDcyMjY1NWFmMzRmIDEwMDY0NAotLS0gYS9rZXJuZWwvbG9ja2luZy9v
c3FfbG9jay5jCisrKyBiL2tlcm5lbC9sb2NraW5nL29zcV9sb2NrLmMKQEAgLTIyLDcgKzIyLDcg
QEAgc3RhdGljIGlubGluZSBpbnQgZW5jb2RlX2NwdShpbnQgY3B1X25yKQrCoMKgwqDCoMKgwqDC
oCByZXR1cm4gY3B1X25yICsgMTsKwqB9CsKgCi1zdGF0aWMgaW5saW5lIGludCBub2RlX2NwdShz
dHJ1Y3Qgb3B0aW1pc3RpY19zcGluX25vZGUgKm5vZGUpCitzdGF0aWMgaW5saW5lIGludCBfX21h
eWJlX3VudXNlZCBub2RlX2NwdShzdHJ1Y3Qgb3B0aW1pc3RpY19zcGluX25vZGUKKm5vZGUpCsKg
ewrCoMKgwqDCoMKgwqDCoCByZXR1cm4gbm9kZS0+Y3B1IC0gMTsKwqB9CgpDaGVlcnMsCkxvbmdt
YW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
