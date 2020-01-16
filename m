Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4E913D450
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 07:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymGlMf0NBw7ZgJ01/vxoKjMTZ3DuCH/zssxZYxvK9rU=; b=irQP6IWFQ7O/iG
	mxfDeJGm4146S4u2Np28n9OMBPX8+uT+JKdpm0kdOP8RtS0EMxnHSIIBIuZ/ewdnxOq18gFO4HMpy
	H3zbKbKoQuADnhi6ThWqU0Q36A/s2n55TA+yOBJv5ElfybFNFMkUZNVBC2lbxR5MYeOx0dGw2xA9n
	bfCjlf1B4HPDXxi/QUrFIvGEbBweUYqUJgWJiDaAEj/1Tmnh3uruFVIPYxmaHQwbFs2NwcCL8BLzT
	nATOYiFu160VjnBgbDmU24vCLrhB/UAO0Be3ehG2XLBVboKjHwxwh+uH5bEDvIWbFrJw8qZQJL9qB
	1YsNiSaOkwROJ6UGVqpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irycS-0001Rk-4O; Thu, 16 Jan 2020 06:27:04 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iryc0-0001FU-2n
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 06:26:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id b137so9372302pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 22:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pcisanTgJm2Q3K0/rpShD/S/gMp/LV+S7q0SnsZ5eZA=;
 b=C+UNMN/n21Z+KKPWTfdkIPpgJbCp3mGvMCgNhHm92fuQmkPRxe8JFhLupRWnAl3BwY
 h4nyTZzX4mKEfs9QRe+aUDa/7XzgnYI3nzON1Ohb5efUL0C15DI/G5D7rqbRgrqYl5Ef
 h9i+GdntCOUA9SGQQCKWLxSGfDECudeCS5xHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pcisanTgJm2Q3K0/rpShD/S/gMp/LV+S7q0SnsZ5eZA=;
 b=L2mA59yPMN1mK2PliNeP6FKfbmdQ7gUAvi1fQ5Wu2IQxGgtHoKIEkEz9YCIx2TEUpv
 OkTN4ZSukXEsX1e7MQhw3XJ6utHVhEfEcmO8O46wqSMMDMKyGjm8sIL+db1wchuCEnfA
 I3YYhANBbqtKlXOLOAPw5mjydtm3qI1Kd/5FHjrU49QmIpsElbqdY1cy9tbk+y77aL2R
 yRPm53irkzxz1xTR9Uth8o6nrxStt8D0ofr8AmqKvl17SXM9locdeBMNPFer5Ic1A29q
 bRTo5V9rPLtJQmCNaNyqHC8H/SX0bu1WfoIj5hUCeQtisI7hKzdmbRU4F7v03p8xTw2t
 1JAw==
X-Gm-Message-State: APjAAAUp74PT26qg7V5FBJIaBSQSjv2gwB/xQDhoUGVW1kusvDESVa6i
 BUivwLt7MotZhLhOfFWqt+zDng==
X-Google-Smtp-Source: APXvYqzZNecZWkElAjCkhku46ZLAEt1HILfHwFxN9cP8hb0d/spt/ieWbkSQrR4axqy4NHudIk+/7A==
X-Received: by 2002:a63:220b:: with SMTP id i11mr36948573pgi.50.1579155995165; 
 Wed, 15 Jan 2020 22:26:35 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-097c-7eed-afd4-cd15.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:97c:7eed:afd4:cd15])
 by smtp.gmail.com with ESMTPSA id c68sm24184359pfc.156.2020.01.15.22.26.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 22:26:34 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 kasan-dev@googlegroups.com
Subject: [PATCH v2 1/3] kasan: stop tests being eliminated as dead code with
 FORTIFY_SOURCE
Date: Thu, 16 Jan 2020 17:26:23 +1100
Message-Id: <20200116062625.32692-2-dja@axtens.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116062625.32692-1-dja@axtens.net>
References: <20200116062625.32692-1-dja@axtens.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_222636_121266_D9D386D0 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: christophe.leroy@c-s.fr, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, x86@kernel.org,
 Daniel Micay <danielmicay@gmail.com>, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, linuxppc-dev@lists.ozlabs.org,
 dvyukov@google.com, Daniel Axtens <dja@axtens.net>
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
bW9yeSBBUEkgZnVuY3Rpb25zIikKUmV2aWV3ZWQtYnk6IERtaXRyeSBWeXVrb3YgPGR2eXVrb3ZA
Z29vZ2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIEF4dGVucyA8ZGphQGF4dGVucy5uZXQ+
CgotLS0KCnYyOiByZW5hbWUgdmFyaWFibGVzIHRvIGhhdmUga2FzYW5fIHByZWZpeGVzCi0tLQog
bGliL3Rlc3Rfa2FzYW4uYyB8IDMwICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2xpYi90ZXN0X2thc2FuLmMgYi9saWIvdGVzdF9rYXNhbi5jCmluZGV4IDMyOGQzM2JlYWUz
Ni4uYTEzMGQ3NWI5Mzg1IDEwMDY0NAotLS0gYS9saWIvdGVzdF9rYXNhbi5jCisrKyBiL2xpYi90
ZXN0X2thc2FuLmMKQEAgLTIzLDYgKzIzLDE0IEBACiAKICNpbmNsdWRlIDxhc20vcGFnZS5oPgog
CisvKgorICogV2UgYXNzaWduIHNvbWUgdGVzdCByZXN1bHRzIHRvIHRoZXNlIGdsb2JhbHMgdG8g
bWFrZSBzdXJlIHRoZSB0ZXN0cworICogYXJlIG5vdCBlbGltaW5hdGVkIGFzIGRlYWQgY29kZS4K
KyAqLworCitpbnQga2FzYW5faW50X3Jlc3VsdDsKK3ZvaWQgKmthc2FuX3B0cl9yZXN1bHQ7CisK
IC8qCiAgKiBOb3RlOiB0ZXN0IGZ1bmN0aW9ucyBhcmUgbWFya2VkIG5vaW5saW5lIHNvIHRoYXQg
dGhlaXIgbmFtZXMgYXBwZWFyIGluCiAgKiByZXBvcnRzLgpAQCAtNjAzLDcgKzYxMSw3IEBAIHN0
YXRpYyBub2lubGluZSB2b2lkIF9faW5pdCBrYXNhbl9tZW1jaHIodm9pZCkKIAlpZiAoIXB0cikK
IAkJcmV0dXJuOwogCi0JbWVtY2hyKHB0ciwgJzEnLCBzaXplICsgMSk7CisJa2FzYW5fcHRyX3Jl
c3VsdCA9IG1lbWNocihwdHIsICcxJywgc2l6ZSArIDEpOwogCWtmcmVlKHB0cik7CiB9CiAKQEAg
LTYxOCw4ICs2MjYsNyBAQCBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga2FzYW5fbWVtY21w
KHZvaWQpCiAJaWYgKCFwdHIpCiAJCXJldHVybjsKIAotCW1lbXNldChhcnIsIDAsIHNpemVvZihh
cnIpKTsKLQltZW1jbXAocHRyLCBhcnIsIHNpemUrMSk7CisJa2FzYW5faW50X3Jlc3VsdCA9IG1l
bWNtcChwdHIsIGFyciwgc2l6ZSArIDEpOwogCWtmcmVlKHB0cik7CiB9CiAKQEAgLTY0MiwyMiAr
NjQ5LDIyIEBAIHN0YXRpYyBub2lubGluZSB2b2lkIF9faW5pdCBrYXNhbl9zdHJpbmdzKHZvaWQp
CiAJICogd2lsbCBsaWtlbHkgcG9pbnQgdG8gemVyb2VkIGJ5dGUuCiAJICovCiAJcHRyICs9IDE2
OwotCXN0cmNocihwdHIsICcxJyk7CisJa2FzYW5fcHRyX3Jlc3VsdCA9IHN0cmNocihwdHIsICcx
Jyk7CiAKIAlwcl9pbmZvKCJ1c2UtYWZ0ZXItZnJlZSBpbiBzdHJyY2hyXG4iKTsKLQlzdHJyY2hy
KHB0ciwgJzEnKTsKKwlrYXNhbl9wdHJfcmVzdWx0ID0gc3RycmNocihwdHIsICcxJyk7CiAKIAlw
cl9pbmZvKCJ1c2UtYWZ0ZXItZnJlZSBpbiBzdHJjbXBcbiIpOwotCXN0cmNtcChwdHIsICIyIik7
CisJa2FzYW5faW50X3Jlc3VsdCA9IHN0cmNtcChwdHIsICIyIik7CiAKIAlwcl9pbmZvKCJ1c2Ut
YWZ0ZXItZnJlZSBpbiBzdHJuY21wXG4iKTsKLQlzdHJuY21wKHB0ciwgIjIiLCAxKTsKKwlrYXNh
bl9pbnRfcmVzdWx0ID0gc3RybmNtcChwdHIsICIyIiwgMSk7CiAKIAlwcl9pbmZvKCJ1c2UtYWZ0
ZXItZnJlZSBpbiBzdHJsZW5cbiIpOwotCXN0cmxlbihwdHIpOworCWthc2FuX2ludF9yZXN1bHQg
PSBzdHJsZW4ocHRyKTsKIAogCXByX2luZm8oInVzZS1hZnRlci1mcmVlIGluIHN0cm5sZW5cbiIp
OwotCXN0cm5sZW4ocHRyLCAxKTsKKwlrYXNhbl9pbnRfcmVzdWx0ID0gc3RybmxlbihwdHIsIDEp
OwogfQogCiBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga2FzYW5fYml0b3BzKHZvaWQpCkBA
IC03MjQsMTEgKzczMSwxMiBAQCBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga2FzYW5fYml0
b3BzKHZvaWQpCiAJX190ZXN0X2FuZF9jaGFuZ2VfYml0KEJJVFNfUEVSX0xPTkcgKyBCSVRTX1BF
Ul9CWVRFLCBiaXRzKTsKIAogCXByX2luZm8oIm91dC1vZi1ib3VuZHMgaW4gdGVzdF9iaXRcbiIp
OwotCSh2b2lkKXRlc3RfYml0KEJJVFNfUEVSX0xPTkcgKyBCSVRTX1BFUl9CWVRFLCBiaXRzKTsK
KwlrYXNhbl9pbnRfcmVzdWx0ID0gdGVzdF9iaXQoQklUU19QRVJfTE9ORyArIEJJVFNfUEVSX0JZ
VEUsIGJpdHMpOwogCiAjaWYgZGVmaW5lZChjbGVhcl9iaXRfdW5sb2NrX2lzX25lZ2F0aXZlX2J5
dGUpCiAJcHJfaW5mbygib3V0LW9mLWJvdW5kcyBpbiBjbGVhcl9iaXRfdW5sb2NrX2lzX25lZ2F0
aXZlX2J5dGVcbiIpOwotCWNsZWFyX2JpdF91bmxvY2tfaXNfbmVnYXRpdmVfYnl0ZShCSVRTX1BF
Ul9MT05HICsgQklUU19QRVJfQllURSwgYml0cyk7CisJa2FzYW5faW50X3Jlc3VsdCA9IGNsZWFy
X2JpdF91bmxvY2tfaXNfbmVnYXRpdmVfYnl0ZShCSVRTX1BFUl9MT05HICsKKwkJQklUU19QRVJf
QllURSwgYml0cyk7CiAjZW5kaWYKIAlrZnJlZShiaXRzKTsKIH0KLS0gCjIuMjAuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
