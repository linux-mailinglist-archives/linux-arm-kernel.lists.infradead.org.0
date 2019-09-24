Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9590BBD580
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 01:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x8vwCxGnQcqy71IFDXJZ3lK6OKmAKnwwJOqhPfjrxII=; b=izfVIWKXjXUAI7
	kkAw3ZHFz2EQ3Bfd31EQRIQqQ9zUriaCHTqD53W4iYdEl0/gaoqPD7UAZCVfCqbdlnOj8Wf1WFq7O
	3xgXLi31fjkIsHO26meKDw47ZOZQp4FJldvfknhNrgzIeno2YuSEm4BMSMZTvXRY+nu9Ov0V+s/q9
	8SL6Fm7R89rTHf2YoS65VXPrB+lsOVdfoNwQNL84SGFapzTcaczi2zZ5eZgEXwLFjeWY+3uN8F3Nl
	z/WEBfV8g8WCmA6cYlWeVhnJs/4Xrkiy2LVtdNsJbsj4sWy9ZRUd7bUcqmVs99MwFaYrFcISqGgWT
	DfFbfrZZ0LTyTEzNDB1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCuK3-000079-7g; Tue, 24 Sep 2019 23:34:19 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCuIK-0008WM-HO
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 23:32:59 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 751F980E2;
 Tue, 24 Sep 2019 23:33:01 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: OMAP2+: Fix warnings with broken omap2_set_init_voltage()
Date: Tue, 24 Sep 2019 16:32:22 -0700
Message-Id: <20190924233222.52757-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_163238_894977_9405D973 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Tero Kristo <t-kristo@ti.com>,
 =?UTF-8?q?Andr=C3=A9=20Roth?= <neolynx@gmail.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBjb2RlIGlzIGN1cnJlbnRseSB1bmFibGUgdG8gZmluZCB0aGUgZHRzIG9wcCB0YWJsZXMg
YXMgdGktY3B1ZnJlcQpuZWVkcyB0byBzZXQgdGhlbSB1cCBmaXJzdCBiYXNlZCBvbiBzcGVlZCBi
aW5uaW5nLgoKV2Ugc3RvcHBlZCBpbml0aWFsaXppbmcgdGhlIG9wcCB0YWJsZXMgd2l0aCBwbGF0
Zm9ybSBjb2RlIHllYXJzIGFnbyBmb3IKZGV2aWNlIHRyZWUgYmFzZWQgYm9vdGluZyB3aXRoIGNv
bW1pdCA5MmQ1MTg1NmQ3NDAgKCJBUk06IE9NQVAzKzogZG8gbm90CnJlZ2lzdGVyIG5vbi1kdCBP
UFAgdGFibGVzIGZvciBkZXZpY2UgdHJlZSBib290IiksIGFuZCBhbGwgb2YgbWFjaC1vbWFwMgpp
cyBub3cgYm9vdGluZyB1c2luZyBkZXZpY2UgdHJlZS4KCldlIGN1cnJlbnRseSBnZXQgdGhlIGZv
bGxvd2luZyBlcnJvcnMgb24gaW5pdDoKCm9tYXAyX3NldF9pbml0X3ZvbHRhZ2U6IHVuYWJsZSB0
byBmaW5kIGJvb3QgdXAgT1BQIGZvciB2ZGRfbXB1Cm9tYXAyX3NldF9pbml0X3ZvbHRhZ2U6IHVu
YWJsZSB0byBzZXQgdmRkX21wdQpvbWFwMl9zZXRfaW5pdF92b2x0YWdlOiB1bmFibGUgdG8gZmlu
ZCBib290IHVwIE9QUCBmb3IgdmRkX2NvcmUKb21hcDJfc2V0X2luaXRfdm9sdGFnZTogdW5hYmxl
IHRvIHNldCB2ZGRfY29yZQpvbWFwMl9zZXRfaW5pdF92b2x0YWdlOiB1bmFibGUgdG8gZmluZCBi
b290IHVwIE9QUCBmb3IgdmRkX2l2YQpvbWFwMl9zZXRfaW5pdF92b2x0YWdlOiB1bmFibGUgdG8g
c2V0IHZkZF9pdmEKCkxldCdzIGp1c3QgZHJvcCB0aGUgdW51c2VkIGNvZGUuIE5vd2FkYXlzIHRp
LWNwdWZyZXEgc2hvdWxkIGJlIHVzZWQgdG8KdG8gaW5pdGlhbGl6ZSB0aGluZ3MgcHJvcGVybHku
CgpDYzogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+CkNjOiBBbmRyw6kgUm90aCA8bmVv
bHlueEBnbWFpbC5jb20+CkNjOiAiSC4gTmlrb2xhdXMgU2NoYWxsZXIiIDxobnNAZ29sZGVsaWNv
LmNvbT4KQ2M6IE5pc2hhbnRoIE1lbm9uIDxubUB0aS5jb20+CkNjOiBUZXJvIEtyaXN0byA8dC1r
cmlzdG9AdGkuY29tPgpTaWduZWQtb2ZmLWJ5OiBUb255IExpbmRncmVuIDx0b255QGF0b21pZGUu
Y29tPgotLS0KCkd1eXMsIHBsZWFzZSBjaGVjayBhbmQgYWNrIGlmIHdlIGNhbiByZWFsbHkgZG8g
dGhpcyB0byBnZXQgcmlkIG9mIHNvbWUKcG9pbnRsZXNzIGRtZXNnIC1sMyBlcnJvcnMgd2l0aG91
dCBhZmZlY3RpbmcgdGhlIG9uZ29pbmcgY3B1ZnJlcSBhbmQKdm9sdGFnZSB3b3JrLgoKLS0tCiBh
cmNoL2FybS9tYWNoLW9tYXAyL3BtLmMgfCAxMDAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL21hY2gtb21hcDIvcG0uYyBiL2FyY2gvYXJtL21hY2gtb21hcDIvcG0uYwot
LS0gYS9hcmNoL2FybS9tYWNoLW9tYXAyL3BtLmMKKysrIGIvYXJjaC9hcm0vbWFjaC1vbWFwMi9w
bS5jCkBAIC03NCw4MyArNzQsNiBAQCBpbnQgb21hcF9wbV9jbGtkbXNfc2V0dXAoc3RydWN0IGNs
b2NrZG9tYWluICpjbGtkbSwgdm9pZCAqdW51c2VkKQogCXJldHVybiAwOwogfQogCi0vKgotICog
VGhpcyBBUEkgaXMgdG8gYmUgY2FsbGVkIGR1cmluZyBpbml0IHRvIHNldCB0aGUgdmFyaW91cyB2
b2x0YWdlCi0gKiBkb21haW5zIHRvIHRoZSB2b2x0YWdlIGFzIHBlciB0aGUgb3BwIHRhYmxlLiBU
eXBpY2FsbHkgd2UgYm9vdCB1cAotICogYXQgdGhlIG5vbWluYWwgdm9sdGFnZS4gU28gdGhpcyBm
dW5jdGlvbiBmaW5kcyBvdXQgdGhlIHJhdGUgb2YKLSAqIHRoZSBjbG9jayBhc3NvY2lhdGVkIHdp
dGggdGhlIHZvbHRhZ2UgZG9tYWluLCBmaW5kcyBvdXQgdGhlIGNvcnJlY3QKLSAqIG9wcCBlbnRy
eSBhbmQgc2V0cyB0aGUgdm9sdGFnZSBkb21haW4gdG8gdGhlIHZvbHRhZ2Ugc3BlY2lmaWVkCi0g
KiBpbiB0aGUgb3BwIGVudHJ5Ci0gKi8KLXN0YXRpYyBpbnQgX19pbml0IG9tYXAyX3NldF9pbml0
X3ZvbHRhZ2UoY2hhciAqdmRkX25hbWUsIGNoYXIgKmNsa19uYW1lLAotCQkJCQkgY29uc3QgY2hh
ciAqb2hfbmFtZSkKLXsKLQlzdHJ1Y3Qgdm9sdGFnZWRvbWFpbiAqdm9sdGRtOwotCXN0cnVjdCBj
bGsgKmNsazsKLQlzdHJ1Y3QgZGV2X3BtX29wcCAqb3BwOwotCXVuc2lnbmVkIGxvbmcgZnJlcSwg
Ym9vdHVwX3ZvbHQ7Ci0Jc3RydWN0IGRldmljZSAqZGV2OwotCi0JaWYgKCF2ZGRfbmFtZSB8fCAh
Y2xrX25hbWUgfHwgIW9oX25hbWUpIHsKLQkJcHJfZXJyKCIlczogaW52YWxpZCBwYXJhbWV0ZXJz
XG4iLCBfX2Z1bmNfXyk7Ci0JCWdvdG8gZXhpdDsKLQl9Ci0KLQlpZiAoIXN0cm5jbXAob2hfbmFt
ZSwgIm1wdSIsIDMpKQotCQkvKiAKLQkJICogQWxsIGN1cnJlbnQgT01BUHMgc2hhcmUgdm9sdGFn
ZSByYWlsIGFuZCBjbG9jawotCQkgKiBzb3VyY2UsIHNvIENQVTAgaXMgdXNlZCB0byByZXByZXNl
bnQgdGhlIE1QVS1TUy4KLQkJICovCi0JCWRldiA9IGdldF9jcHVfZGV2aWNlKDApOwotCWVsc2UK
LQkJZGV2ID0gb21hcF9kZXZpY2VfZ2V0X2J5X2h3bW9kX25hbWUob2hfbmFtZSk7Ci0KLQlpZiAo
SVNfRVJSKGRldikpIHsKLQkJcHJfZXJyKCIlczogVW5hYmxlIHRvIGdldCBkZXYgcG9pbnRlciBm
b3IgaHdtb2QgJXNcbiIsCi0JCQlfX2Z1bmNfXywgb2hfbmFtZSk7Ci0JCWdvdG8gZXhpdDsKLQl9
Ci0KLQl2b2x0ZG0gPSB2b2x0ZG1fbG9va3VwKHZkZF9uYW1lKTsKLQlpZiAoIXZvbHRkbSkgewot
CQlwcl9lcnIoIiVzOiB1bmFibGUgdG8gZ2V0IHZkZCBwb2ludGVyIGZvciB2ZGRfJXNcbiIsCi0J
CQlfX2Z1bmNfXywgdmRkX25hbWUpOwotCQlnb3RvIGV4aXQ7Ci0JfQotCi0JY2xrID0gIGNsa19n
ZXQoTlVMTCwgY2xrX25hbWUpOwotCWlmIChJU19FUlIoY2xrKSkgewotCQlwcl9lcnIoIiVzOiB1
bmFibGUgdG8gZ2V0IGNsayAlc1xuIiwgX19mdW5jX18sIGNsa19uYW1lKTsKLQkJZ290byBleGl0
OwotCX0KLQotCWZyZXEgPSBjbGtfZ2V0X3JhdGUoY2xrKTsKLQljbGtfcHV0KGNsayk7Ci0KLQlv
cHAgPSBkZXZfcG1fb3BwX2ZpbmRfZnJlcV9jZWlsKGRldiwgJmZyZXEpOwotCWlmIChJU19FUlIo
b3BwKSkgewotCQlwcl9lcnIoIiVzOiB1bmFibGUgdG8gZmluZCBib290IHVwIE9QUCBmb3IgdmRk
XyVzXG4iLAotCQkJX19mdW5jX18sIHZkZF9uYW1lKTsKLQkJZ290byBleGl0OwotCX0KLQotCWJv
b3R1cF92b2x0ID0gZGV2X3BtX29wcF9nZXRfdm9sdGFnZShvcHApOwotCWRldl9wbV9vcHBfcHV0
KG9wcCk7Ci0KLQlpZiAoIWJvb3R1cF92b2x0KSB7Ci0JCXByX2VycigiJXM6IHVuYWJsZSB0byBm
aW5kIHZvbHRhZ2UgY29ycmVzcG9uZGluZyB0byB0aGUgYm9vdHVwIE9QUCBmb3IgdmRkXyVzXG4i
LAotCQkgICAgICAgX19mdW5jX18sIHZkZF9uYW1lKTsKLQkJZ290byBleGl0OwotCX0KLQotCXZv
bHRkbV9zY2FsZSh2b2x0ZG0sIGJvb3R1cF92b2x0KTsKLQlyZXR1cm4gMDsKLQotZXhpdDoKLQlw
cl9lcnIoIiVzOiB1bmFibGUgdG8gc2V0IHZkZF8lc1xuIiwgX19mdW5jX18sIHZkZF9uYW1lKTsK
LQlyZXR1cm4gLUVJTlZBTDsKLX0KLQogI2lmZGVmIENPTkZJR19TVVNQRU5ECiBzdGF0aWMgaW50
IG9tYXBfcG1fZW50ZXIoc3VzcGVuZF9zdGF0ZV90IHN1c3BlbmRfc3RhdGUpCiB7CkBAIC0yMDgs
MjUgKzEzMSw2IEBAIHZvaWQgb21hcF9jb21tb25fc3VzcGVuZF9pbml0KHZvaWQgKnBtX3N1c3Bl
bmQpCiB9CiAjZW5kaWYgLyogQ09ORklHX1NVU1BFTkQgKi8KIAotc3RhdGljIHZvaWQgX19pbml0
IG9tYXAzX2luaXRfdm9sdGFnZXModm9pZCkKLXsKLQlpZiAoIXNvY19pc19vbWFwMzR4eCgpKQot
CQlyZXR1cm47Ci0KLQlvbWFwMl9zZXRfaW5pdF92b2x0YWdlKCJtcHVfaXZhIiwgImRwbGwxX2Nr
IiwgIm1wdSIpOwotCW9tYXAyX3NldF9pbml0X3ZvbHRhZ2UoImNvcmUiLCAibDNfaWNrIiwgImwz
X21haW4iKTsKLX0KLQotc3RhdGljIHZvaWQgX19pbml0IG9tYXA0X2luaXRfdm9sdGFnZXModm9p
ZCkKLXsKLQlpZiAoIXNvY19pc19vbWFwNDR4eCgpKQotCQlyZXR1cm47Ci0KLQlvbWFwMl9zZXRf
aW5pdF92b2x0YWdlKCJtcHUiLCAiZHBsbF9tcHVfY2siLCAibXB1Iik7Ci0Jb21hcDJfc2V0X2lu
aXRfdm9sdGFnZSgiY29yZSIsICJsM19kaXZfY2siLCAibDNfbWFpbl8xIik7Ci0Jb21hcDJfc2V0
X2luaXRfdm9sdGFnZSgiaXZhIiwgImRwbGxfaXZhX201eDJfY2siLCAiaXZhIik7Ci19Ci0KIGlu
dCBfX21heWJlX3VudXNlZCBvbWFwX3BtX25vcF9pbml0KHZvaWQpCiB7CiAJcmV0dXJuIDA7CkBA
IC0yNDYsMTAgKzE1MCw2IEBAIGludCBfX2luaXQgb21hcDJfY29tbW9uX3BtX2xhdGVfaW5pdCh2
b2lkKQogCW9tYXA0X3R3bF9pbml0KCk7CiAJb21hcF92b2x0YWdlX2xhdGVfaW5pdCgpOwogCi0J
LyogSW5pdGlhbGl6ZSB0aGUgdm9sdGFnZXMgKi8KLQlvbWFwM19pbml0X3ZvbHRhZ2VzKCk7Ci0J
b21hcDRfaW5pdF92b2x0YWdlcygpOwotCiAJLyogU21hcnRyZWZsZXggZGV2aWNlIGluaXQgKi8K
IAlvbWFwX2RldmluaXRfc21hcnRyZWZsZXgoKTsKIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
