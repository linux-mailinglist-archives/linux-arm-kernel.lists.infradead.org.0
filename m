Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5482413B9CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 07:38:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zem+nKnjMvOh5R7T1CSEFK+ZuGod5ZqyQ6CobKqYdeI=; b=ZRDDZGoMJdVUJY
	Zf/9vb7D8bbvDdp+ir+ut/+sIYdls5IlJGNhmzer37w8XrWI0I1VWdBHnpEkcpM+2ngu0JIDbOB98
	rlyk5PIfFiGenVHLQgAJcFsiNEfzr2qRLqJ+2aUvB9dAAyAIs2+G1gX2RGMo01if804t1bBY0/w1g
	4KoHdxgogDLLY5ATTxOY5pqQuAdmiKi8krM62LI2HT+U5Ah+AVVKJ6NhDeKPqaWij2e9kzTgYhJlD
	JG7hJrTm1XtFnwPn3St8gJOAa8lKMQXaSBmQI5rzs6hnebxC8kSC+1m6ZCeY8sHjLcUo6gBrWCLiB
	+FXCkHyXIS0ayEC3UteQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ircJV-0001cF-W6; Wed, 15 Jan 2020 06:38:01 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ircJ6-0001Qa-Ej
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 06:37:40 +0000
Received: by mail-pl1-x643.google.com with SMTP id az3so6410084plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 22:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r5/dhMWxJZ8SOba/KcCWGM9GPzNc+Jy36C4OySceHUs=;
 b=hZt2zcSkhPM4xlgQqygBb81tHBpEUlKN16gNo5uwFqu0hmxvbGMEGnga+kgyb8gycl
 0mEPUm8zWm/afABGpp4qo/+EicaA5gwQ5PcqATowdt0QsOeVETsscNnXyOxzczMnAN0J
 F2Mg0XTtpYBWxFAaFL+t4jrE6YIHS/9Xxn0sU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r5/dhMWxJZ8SOba/KcCWGM9GPzNc+Jy36C4OySceHUs=;
 b=KAxUTYz8D9f+osJvrN4YT2DFt0W39B1FxPVIl/bIISm06hXsWjTHi4aVA/BH7utNYp
 MTGID27QVozbkYVKzYYZhKiACScxPeZAw747h4tOuKywUAagqIndefYi89loNmxqgDJc
 fLNLo4m66DlGaUX7VHsp/dM2LIzmA/CZcH3V0TZFpo7rvJ5xmPD5vZR6YWnpDY87sNqL
 3GrZx98FYn4Rf8rXW/ujPw7Sq5xLOUFvQztftVWreYt/IG5q04KqWCUvsvtqswAeamU+
 c/C9r9wKf9DkJHs7Zeh83bUvjco8oBAortCJcODBiJYb1d0lqjWtinJJ4kv4DNW1KDMX
 R2BA==
X-Gm-Message-State: APjAAAXgsbdP70lRLXIZI/CnYuI7Bq35JBmwjZEuZtkMtRR2ZQKCkEbT
 5EYRKPe6qQxIClTPNHM9iSJLCw==
X-Google-Smtp-Source: APXvYqwq4olT7JovwG6rqn0xRWiB0H+icpZZI6IwXn3zwCq1AedHh4w2c0F9mU0Wz9byY74hw2I0kw==
X-Received: by 2002:a17:90a:6:: with SMTP id 6mr34950202pja.71.1579070255741; 
 Tue, 14 Jan 2020 22:37:35 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-8d73-bc9d-5592-cfd7.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:8d73:bc9d:5592:cfd7])
 by smtp.gmail.com with ESMTPSA id c15sm20438468pja.30.2020.01.14.22.37.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 22:37:35 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 kasan-dev@googlegroups.com
Subject: [PATCH 1/2] kasan: stop tests being eliminated as dead code with
 FORTIFY_SOURCE
Date: Wed, 15 Jan 2020 17:37:09 +1100
Message-Id: <20200115063710.15796-2-dja@axtens.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200115063710.15796-1-dja@axtens.net>
References: <20200115063710.15796-1-dja@axtens.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_223736_493179_22F3B9C3 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-s390@vger.kernel.org, linux-xtensa@linux-xtensa.org, x86@kernel.org,
 Daniel Micay <danielmicay@gmail.com>, Alexander Potapenko <glider@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Daniel Axtens <dja@axtens.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MyBLQVNBTiBzZWxmLXRlc3RzIGZhaWwgb24gYSBrZXJuZWwgd2l0aCBib3RoIEtBU0FOIGFuZCBG
T1JUSUZZX1NPVVJDRToKbWVtY2hyLCBtZW1jbXAgYW5kIHN0cmxlbi4KCldoZW4gRk9SVElGWV9T
T1VSQ0UgaXMgb24sIGEgbnVtYmVyIG9mIGZ1bmN0aW9ucyBhcmUgcmVwbGFjZWQgd2l0aApmb3J0
aWZpZWQgdmVyc2lvbnMsIHdoaWNoIGF0dGVtcHQgdG8gY2hlY2sgdGhlIHNpemVzIG9mIHRoZSBv
cGVyYW5kcy4KSG93ZXZlciwgdGhlc2UgZnVuY3Rpb25zIG9mdGVuIGRpcmVjdGx5IGludm9rZSBf
X2J1aWx0aW5fZm9vKCkgb25jZSB0aGV5CmhhdmUgcGVyZm9ybWVkIHRoZSBmb3J0aWZ5IGNoZWNr
LiBUaGUgY29tcGlsZXIgY2FuIGRldGVjdCB0aGF0IHRoZSByZXN1bHRzCm9mIHRoZXNlIGZ1bmN0
aW9ucyBhcmUgbm90IHVzZWQsIGFuZCBrbm93cyB0aGF0IHRoZXkgaGF2ZSBubyBvdGhlciBzaWRl
CmVmZmVjdHMsIGFuZCBzbyBjYW4gZWxpbWluYXRlIHRoZW0gYXMgZGVhZCBjb2RlLgoKV2h5IGFy
ZSBvbmx5IG1lbWNociwgbWVtY21wIGFuZCBzdHJsZW4gYWZmZWN0ZWQ/Cj09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKT2Ygc3RyaW5nIGFuZCBzdHJpbmct
bGlrZSBmdW5jdGlvbnMsIGthc2FuX3Rlc3QgdGVzdHM6CgogKiBzdHJjaHIgIC0+ICBub3QgYWZm
ZWN0ZWQsIG5vIGZvcnRpZmllZCB2ZXJzaW9uCiAqIHN0cnJjaHIgLT4gIGxpa2V3aXNlCiAqIHN0
cmNtcCAgLT4gIGxpa2V3aXNlCiAqIHN0cm5jbXAgLT4gIGxpa2V3aXNlCgogKiBzdHJubGVuIC0+
ICBub3QgYWZmZWN0ZWQsIHRoZSBmb3J0aWZ5IHNvdXJjZSBpbXBsZW1lbnRhdGlvbiBjYWxscyB0
aGUKICAgICAgICAgICAgICAgdW5kZXJseWluZyBzdHJubGVuIGltcGxlbWVudGF0aW9uIHdoaWNo
IGlzIGluc3RydW1lbnRlZCwgbm90CiAgICAgICAgICAgICAgIGEgYnVpbHRpbgoKICogc3RybGVu
ICAtPiAgYWZmZWN0ZWQsIHRoZSBmb3J0aWZ5IHNvdWNlIGltcGxlbWVudGF0aW9uIGNhbGxzIGEg
X19idWlsdGluCiAgICAgICAgICAgICAgIHZlcnNpb24gd2hpY2ggdGhlIGNvbXBpbGVyIGNhbiBk
ZXRlcm1pbmUgaXMgZGVhZC4KCiAqIG1lbWNociAgLT4gIGxpa2V3aXNlCiAqIG1lbWNtcCAgLT4g
IGxpa2V3aXNlCgogKiBtZW1zZXQgLT4gICBub3QgYWZmZWN0ZWQsIHRoZSBjb21waWxlciBrbm93
cyB0aGF0IG1lbXNldCB3cml0ZXMgdG8gaXRzCgkgICAgICAgZmlyc3QgYXJndW1lbnQgYW5kIHRo
ZXJlZm9yZSBpcyBub3QgZGVhZC4KCldoeSBkb2VzIHRoaXMgbm90IGFmZmVjdCB0aGUgZnVuY3Rp
b25zIG5vcm1hbGx5Pwo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KCkluIHN0cmluZy5oLCB0aGVzZSBmdW5jdGlvbnMgYXJlIG5vdCBtYXJrZWQgYXMgX19w
dXJlLCBzbyB0aGUgY29tcGlsZXIKY2Fubm90IGtub3cgdGhhdCB0aGV5IGRvIG5vdCBoYXZlIHNp
ZGUgZWZmZWN0cy4gSWYgcmVsZXZhbnQgZnVuY3Rpb25zIGFyZQptYXJrZWQgYXMgX19wdXJlIGlu
IHN0cmluZy5oLCB3ZSBzZWUgdGhlIGZvbGxvd2luZyB3YXJuaW5ncyBhbmQgdGhlCmZ1bmN0aW9u
cyBhcmUgZWxpZGVkOgoKbGliL3Rlc3Rfa2FzYW4uYzogSW4gZnVuY3Rpb24g4oCYa2FzYW5fbWVt
Y2hy4oCZOgpsaWIvdGVzdF9rYXNhbi5jOjYwNjoyOiB3YXJuaW5nOiBzdGF0ZW1lbnQgd2l0aCBu
byBlZmZlY3QgWy1XdW51c2VkLXZhbHVlXQogIG1lbWNocihwdHIsICcxJywgc2l6ZSArIDEpOwog
IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmxpYi90ZXN0X2thc2FuLmM6IEluIGZ1bmN0aW9u
IOKAmGthc2FuX21lbWNtcOKAmToKbGliL3Rlc3Rfa2FzYW4uYzo2MjI6Mjogd2FybmluZzogc3Rh
dGVtZW50IHdpdGggbm8gZWZmZWN0IFstV3VudXNlZC12YWx1ZV0KICBtZW1jbXAocHRyLCBhcnIs
IHNpemUrMSk7CiAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmxpYi90ZXN0X2thc2FuLmM6IElu
IGZ1bmN0aW9uIOKAmGthc2FuX3N0cmluZ3PigJk6CmxpYi90ZXN0X2thc2FuLmM6NjQ1OjI6IHdh
cm5pbmc6IHN0YXRlbWVudCB3aXRoIG5vIGVmZmVjdCBbLVd1bnVzZWQtdmFsdWVdCiAgc3RyY2hy
KHB0ciwgJzEnKTsKICBefn5+fn5+fn5+fn5+fn5+Ci4uLgoKVGhpcyBhbm5vdGF0aW9uIHdvdWxk
IG1ha2Ugc2Vuc2UgdG8gYWRkIGFuZCBjb3VsZCBiZSBhZGRlZCBhdCBhbnkgcG9pbnQsIHNvCnRo
ZSBiZWhhdmlvdXIgb2YgdGVzdF9rYXNhbi5jIHNob3VsZCBjaGFuZ2UuCgpUaGUgZml4Cj09PT09
PT0KCk1ha2UgYWxsIHRoZSBmdW5jdGlvbnMgdGhhdCBhcmUgcHVyZSB3cml0ZSB0aGVpciByZXN1
bHRzIHRvIGEgZ2xvYmFsLAp3aGljaCBtYWtlcyB0aGVtIGxpdmUuIFRoZSBzdHJsZW4gYW5kIG1l
bWNociB0ZXN0cyBub3cgcGFzcy4KClRoZSBtZW1jbXAgdGVzdCBzdGlsbCBmYWlscyB0byB0cmln
Z2VyLCB3aGljaCBpcyBhZGRyZXNzZWQgaW4gdGhlIG5leHQKcGF0Y2guCgpDYzogRGFuaWVsIE1p
Y2F5IDxkYW5pZWxtaWNheUBnbWFpbC5jb20+CkNjOiBBbmRyZXkgUnlhYmluaW4gPGFyeWFiaW5p
bkB2aXJ0dW96em8uY29tPgpDYzogQWxleGFuZGVyIFBvdGFwZW5rbyA8Z2xpZGVyQGdvb2dsZS5j
b20+CkNjOiBEbWl0cnkgVnl1a292IDxkdnl1a292QGdvb2dsZS5jb20+CkZpeGVzOiAwYzk2MzUw
YTJkMmYgKCJsaWIvdGVzdF9rYXNhbi5jOiBhZGQgdGVzdHMgZm9yIHNldmVyYWwgc3RyaW5nL21l
bW9yeSBBUEkgZnVuY3Rpb25zIikKU2lnbmVkLW9mZi1ieTogRGFuaWVsIEF4dGVucyA8ZGphQGF4
dGVucy5uZXQ+Ci0tLQogbGliL3Rlc3Rfa2FzYW4uYyB8IDMwICsrKysrKysrKysrKysrKysrKyst
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2xpYi90ZXN0X2thc2FuLmMgYi9saWIvdGVzdF9rYXNhbi5jCmlu
ZGV4IDMyOGQzM2JlYWUzNi4uNThhOGNlZjBkN2EyIDEwMDY0NAotLS0gYS9saWIvdGVzdF9rYXNh
bi5jCisrKyBiL2xpYi90ZXN0X2thc2FuLmMKQEAgLTIzLDYgKzIzLDE0IEBACiAKICNpbmNsdWRl
IDxhc20vcGFnZS5oPgogCisvKgorICogV2UgYXNzaWduIHNvbWUgdGVzdCByZXN1bHRzIHRvIHRo
ZXNlIGdsb2JhbHMgdG8gbWFrZSBzdXJlIHRoZSB0ZXN0cworICogYXJlIG5vdCBlbGltaW5hdGVk
IGFzIGRlYWQgY29kZS4KKyAqLworCitpbnQgaW50X3Jlc3VsdDsKK3ZvaWQgKnB0cl9yZXN1bHQ7
CisKIC8qCiAgKiBOb3RlOiB0ZXN0IGZ1bmN0aW9ucyBhcmUgbWFya2VkIG5vaW5saW5lIHNvIHRo
YXQgdGhlaXIgbmFtZXMgYXBwZWFyIGluCiAgKiByZXBvcnRzLgpAQCAtNjAzLDcgKzYxMSw3IEBA
IHN0YXRpYyBub2lubGluZSB2b2lkIF9faW5pdCBrYXNhbl9tZW1jaHIodm9pZCkKIAlpZiAoIXB0
cikKIAkJcmV0dXJuOwogCi0JbWVtY2hyKHB0ciwgJzEnLCBzaXplICsgMSk7CisJcHRyX3Jlc3Vs
dCA9IG1lbWNocihwdHIsICcxJywgc2l6ZSArIDEpOwogCWtmcmVlKHB0cik7CiB9CiAKQEAgLTYx
OCw4ICs2MjYsNyBAQCBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga2FzYW5fbWVtY21wKHZv
aWQpCiAJaWYgKCFwdHIpCiAJCXJldHVybjsKIAotCW1lbXNldChhcnIsIDAsIHNpemVvZihhcnIp
KTsKLQltZW1jbXAocHRyLCBhcnIsIHNpemUrMSk7CisJaW50X3Jlc3VsdCA9IG1lbWNtcChwdHIs
IGFyciwgc2l6ZSArIDEpOwogCWtmcmVlKHB0cik7CiB9CiAKQEAgLTY0MiwyMiArNjQ5LDIyIEBA
IHN0YXRpYyBub2lubGluZSB2b2lkIF9faW5pdCBrYXNhbl9zdHJpbmdzKHZvaWQpCiAJICogd2ls
bCBsaWtlbHkgcG9pbnQgdG8gemVyb2VkIGJ5dGUuCiAJICovCiAJcHRyICs9IDE2OwotCXN0cmNo
cihwdHIsICcxJyk7CisJcHRyX3Jlc3VsdCA9IHN0cmNocihwdHIsICcxJyk7CiAKIAlwcl9pbmZv
KCJ1c2UtYWZ0ZXItZnJlZSBpbiBzdHJyY2hyXG4iKTsKLQlzdHJyY2hyKHB0ciwgJzEnKTsKKwlw
dHJfcmVzdWx0ID0gc3RycmNocihwdHIsICcxJyk7CiAKIAlwcl9pbmZvKCJ1c2UtYWZ0ZXItZnJl
ZSBpbiBzdHJjbXBcbiIpOwotCXN0cmNtcChwdHIsICIyIik7CisJaW50X3Jlc3VsdCA9IHN0cmNt
cChwdHIsICIyIik7CiAKIAlwcl9pbmZvKCJ1c2UtYWZ0ZXItZnJlZSBpbiBzdHJuY21wXG4iKTsK
LQlzdHJuY21wKHB0ciwgIjIiLCAxKTsKKwlpbnRfcmVzdWx0ID0gc3RybmNtcChwdHIsICIyIiwg
MSk7CiAKIAlwcl9pbmZvKCJ1c2UtYWZ0ZXItZnJlZSBpbiBzdHJsZW5cbiIpOwotCXN0cmxlbihw
dHIpOworCWludF9yZXN1bHQgPSBzdHJsZW4ocHRyKTsKIAogCXByX2luZm8oInVzZS1hZnRlci1m
cmVlIGluIHN0cm5sZW5cbiIpOwotCXN0cm5sZW4ocHRyLCAxKTsKKwlpbnRfcmVzdWx0ID0gc3Ry
bmxlbihwdHIsIDEpOwogfQogCiBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga2FzYW5fYml0
b3BzKHZvaWQpCkBAIC03MjQsMTEgKzczMSwxMiBAQCBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2lu
aXQga2FzYW5fYml0b3BzKHZvaWQpCiAJX190ZXN0X2FuZF9jaGFuZ2VfYml0KEJJVFNfUEVSX0xP
TkcgKyBCSVRTX1BFUl9CWVRFLCBiaXRzKTsKIAogCXByX2luZm8oIm91dC1vZi1ib3VuZHMgaW4g
dGVzdF9iaXRcbiIpOwotCSh2b2lkKXRlc3RfYml0KEJJVFNfUEVSX0xPTkcgKyBCSVRTX1BFUl9C
WVRFLCBiaXRzKTsKKwlpbnRfcmVzdWx0ID0gdGVzdF9iaXQoQklUU19QRVJfTE9ORyArIEJJVFNf
UEVSX0JZVEUsIGJpdHMpOwogCiAjaWYgZGVmaW5lZChjbGVhcl9iaXRfdW5sb2NrX2lzX25lZ2F0
aXZlX2J5dGUpCiAJcHJfaW5mbygib3V0LW9mLWJvdW5kcyBpbiBjbGVhcl9iaXRfdW5sb2NrX2lz
X25lZ2F0aXZlX2J5dGVcbiIpOwotCWNsZWFyX2JpdF91bmxvY2tfaXNfbmVnYXRpdmVfYnl0ZShC
SVRTX1BFUl9MT05HICsgQklUU19QRVJfQllURSwgYml0cyk7CisJaW50X3Jlc3VsdCA9IGNsZWFy
X2JpdF91bmxvY2tfaXNfbmVnYXRpdmVfYnl0ZShCSVRTX1BFUl9MT05HICsKKwkJQklUU19QRVJf
QllURSwgYml0cyk7CiAjZW5kaWYKIAlrZnJlZShiaXRzKTsKIH0KLS0gCjIuMjAuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
