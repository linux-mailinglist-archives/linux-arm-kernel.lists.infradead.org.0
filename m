Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6E01F2333
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+kL/BnqgllF9xNhxFPYSxfrzoMesDSCmlLA4u6Z+7Q=; b=QDAHONorQar4I4
	JRhADc7M5oQyzfEjSCVt/vNCsd+3l18jXqkDJ9cBTXD/I55QQpXuUzsrIH4bYC3M2uOCnAqE6N3q1
	S00MOEvBecrLUGxiw9RRGlPctEf9Rfan+Bwym0QWC5/UdxnGeckE1RwHVmMuPyYtYzaRYbIzEzOf7
	h8Tyrih/WkztSwxQraHTcE7uxfuqdu19DsrRFXVHsso8h0XBe3AE9PieaaErO09l+PINAdP4MoF7e
	OSu1wGfDtmtNCC7LOMaJ0dKLUndKaGXzcTVlScQSRDI7c1EpvQwjB3uOAz2APxrUpEhPzh4oT0EUZ
	4rDLjPD6U9GAZGv8bI2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQyF-0007GM-K4; Mon, 08 Jun 2020 23:14:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQtP-0000gK-FD
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:09:26 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C34BE20897;
 Mon,  8 Jun 2020 23:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657762;
 bh=0iFoIg7nV2CD2R+djatO1hodQJVSkJJ3Jzd7XRmEByk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DvkJPWcz8Chv93fFOsvsqHwdIG9INMFslKzZxNlTm/Mr9ZP2eN13AoCFRPORr0OEK
 u5yYL/fQidpuRVK2lt3I+keORZldq6cgdPYrfpiSVuEBVWC7e03xqtlXwzNg959qOT
 Zi+BDEA9azIFKb/u8RMcB5no+K0Eq8Bxc04xk/Lk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 147/274] arm64: kexec_file: print appropriate
 variable
Date: Mon,  8 Jun 2020 19:04:00 -0400
Message-Id: <20200608230607.3361041-147-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_160923_536741_7DE499E7 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Bhupesh Sharma <bhsharma@redhat.com>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 James Morse <james.morse@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogxYF1a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFjaEBzYW1zdW5nLmNvbT4KClsgVXBzdHJl
YW0gY29tbWl0IDUxMDc1ZTBjYjc1OWE3MzZlNjBhYjRmM2E1ZmVkODY3MGRiYTU4NTIgXQoKVGhl
IHZhbHVlIG9mIGtidWYtPm1lbXN6IG1heSBiZSBkaWZmZXJlbnQgdGhhbiBrYnVmLT5idWZzeiBh
ZnRlciBjYWxsaW5nCmtleGVjX2FkZF9idWZmZXIoKS4gSGVuY2UgYm90aCB2YWx1ZXMgc2hvdWxk
IGJlIGxvZ2dlZC4KCkZpeGVzOiA1MmIyYThhZjc0MzYwICgiYXJtNjQ6IGtleGVjX2ZpbGU6IGxv
YWQgaW5pdHJkIGFuZCBkZXZpY2UtdHJlZSIpCkZpeGVzOiAzNzUxZTcyOGNlZjI5ICgiYXJtNjQ6
IGtleGVjX2ZpbGU6IGFkZCBjcmFzaCBkdW1wIHN1cHBvcnQiKQpTaWduZWQtb2ZmLWJ5OiDFgXVr
YXN6IFN0ZWxtYWNoIDxsLnN0ZWxtYWNoQHNhbXN1bmcuY29tPgpDYzogQUtBU0hJIFRha2FoaXJv
IDx0YWthaGlyby5ha2FzaGlAbGluYXJvLm9yZz4KQ2M6IEphbWVzIE1vcnNlIDxqYW1lcy5tb3Jz
ZUBhcm0uY29tPgpDYzogQmh1cGVzaCBTaGFybWEgPGJoc2hhcm1hQHJlZGhhdC5jb20+Ckxpbms6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMDA0MzAxNjMxNDIuMjcyODItMi1sLnN0ZWxt
YWNoQHNhbXN1bmcuY29tClNpZ25lZC1vZmYtYnk6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5v
cmc+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBh
cmNoL2FybTY0L2tlcm5lbC9tYWNoaW5lX2tleGVjX2ZpbGUuYyB8IDYgKysrLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQva2VybmVsL21hY2hpbmVfa2V4ZWNfZmlsZS5jIGIvYXJjaC9hcm02NC9rZXJuZWwv
bWFjaGluZV9rZXhlY19maWxlLmMKaW5kZXggYjQwYzNiMGRlZjkyLi41ZWJiMjFiODU5YjQgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtNjQva2VybmVsL21hY2hpbmVfa2V4ZWNfZmlsZS5jCisrKyBiL2Fy
Y2gvYXJtNjQva2VybmVsL21hY2hpbmVfa2V4ZWNfZmlsZS5jCkBAIC0yODQsNyArMjg0LDcgQEAg
aW50IGxvYWRfb3RoZXJfc2VnbWVudHMoc3RydWN0IGtpbWFnZSAqaW1hZ2UsCiAJCWltYWdlLT5h
cmNoLmVsZl9oZWFkZXJzX3N6ID0gaGVhZGVyc19zejsKIAogCQlwcl9kZWJ1ZygiTG9hZGVkIGVs
ZiBjb3JlIGhlYWRlciBhdCAweCVseCBidWZzej0weCVseCBtZW1zej0weCVseFxuIiwKLQkJCSBp
bWFnZS0+YXJjaC5lbGZfaGVhZGVyc19tZW0sIGhlYWRlcnNfc3osIGhlYWRlcnNfc3opOworCQkJ
IGltYWdlLT5hcmNoLmVsZl9oZWFkZXJzX21lbSwga2J1Zi5idWZzeiwga2J1Zi5tZW1zeik7CiAJ
fQogCiAJLyogbG9hZCBpbml0cmQgKi8KQEAgLTMwNSw3ICszMDUsNyBAQCBpbnQgbG9hZF9vdGhl
cl9zZWdtZW50cyhzdHJ1Y3Qga2ltYWdlICppbWFnZSwKIAkJaW5pdHJkX2xvYWRfYWRkciA9IGti
dWYubWVtOwogCiAJCXByX2RlYnVnKCJMb2FkZWQgaW5pdHJkIGF0IDB4JWx4IGJ1ZnN6PTB4JWx4
IG1lbXN6PTB4JWx4XG4iLAotCQkJCWluaXRyZF9sb2FkX2FkZHIsIGluaXRyZF9sZW4sIGluaXRy
ZF9sZW4pOworCQkJCWluaXRyZF9sb2FkX2FkZHIsIGtidWYuYnVmc3osIGtidWYubWVtc3opOwog
CX0KIAogCS8qIGxvYWQgZHRiICovCkBAIC0zMzIsNyArMzMyLDcgQEAgaW50IGxvYWRfb3RoZXJf
c2VnbWVudHMoc3RydWN0IGtpbWFnZSAqaW1hZ2UsCiAJaW1hZ2UtPmFyY2guZHRiX21lbSA9IGti
dWYubWVtOwogCiAJcHJfZGVidWcoIkxvYWRlZCBkdGIgYXQgMHglbHggYnVmc3o9MHglbHggbWVt
c3o9MHglbHhcbiIsCi0JCQlrYnVmLm1lbSwgZHRiX2xlbiwgZHRiX2xlbik7CisJCQlrYnVmLm1l
bSwga2J1Zi5idWZzeiwga2J1Zi5tZW1zeik7CiAKIAlyZXR1cm4gMDsKIAotLSAKMi4yNS4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
