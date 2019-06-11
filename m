Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6475C3D3DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nw4AmiivFutlwXTozFO2XFqF35bLExtT/g5PjsUw0q8=; b=sjXYYuF22REiZf
	xIgyFSZtimIa3w/cpaquMKbvX/wLSuKQLHqtvNT6z2uoveQFMQLm2AIwbItJzLqdhYxEcLwzav7Ay
	1dfWZIpmiouFsBgCClI+lFjajU9SLbyn6+WWB4xGhDr3oNTPMpCRCo4vgRM6cAM+VkTyxUHGYbsGE
	eHSCxiJk+sEIb8IQrJj5zq23kzxFkmIbLmiR7DftuEX6qm1579/BVfBj82nhw5q1enSQDHeV9vIbZ
	L/n7FL1H6THQRh3xWQoBMz6gsFFu+t17VGl650F6aTPD78ueMZ7VdMqfKFzFibIsfrz+61bfZ+z09
	u4mXaNqwvPHM3otEwM7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakSd-0003PZ-ML; Tue, 11 Jun 2019 17:21:27 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakSS-0003P8-FS
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:21:18 +0000
Received: by mail-ed1-x542.google.com with SMTP id g13so21216429edu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 10:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oLZoCH+w0vEsUh5B0jjb151kNbWDekY9Hx2peXKMbk4=;
 b=p6M2O8JBT2y4hXNXJ+k4giMVUWIS/Vosq/FvvB5BUcx5CPLUCVhxMVpiKnBWJjmM+j
 bpuaGCRGv3v0FS4vVfk6v3U5vqxLynpHPLlsCXUykwcn1Ztl5JH+vHVIe7GMg0z+CPBr
 LzbhW4T+KhsMjCaPYzE5s6M5K9kOVr3z2uwec/+WMTXMQ3ppTHziHNvlDaySYajKXhpd
 FQvVjnanOlnC/2R6c/9V1sx0kbvm5T7fxtOXsSmsRjSSLd2u4doQFURIdkmck2CsNZu5
 BLGgTvnkcl0ZS2Pst76joa7hhkGeR5KfgWZin00PDYtmQZsnEHwmJNw7N1jq6PrmoVG4
 vh9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oLZoCH+w0vEsUh5B0jjb151kNbWDekY9Hx2peXKMbk4=;
 b=uhgdQc/EXI83IdTEQrQXLCxqUNInvbgm4wewSazJ+svfBKYaybVSHUxJxsyxMLFsgv
 aEiDSsdUXemiPsb+zT2C708hTc0ynas7Pi4Q96fJceiJhIVJMhbpk5n3NQo0d9KSYCur
 6Ybym9Rw/lQj3fieCfFyOEhqffPLlHD8bniz3sWIwwQdoS9Ci2kQ/7xzWE6iQPFLE7T/
 Q1m5WG1bCjiwn05wK3N8Q52cuf2tPAiyiT1IjPHskk8uYzSdOc+Ypg/lrxnHcnL6Z4y8
 HD90+/ZWAd6O/32tT5MS5tahkCi4t/P9Q0P5N/XRESlyE8n4nks8Ui0TPMot1rtLTFXJ
 y+ug==
X-Gm-Message-State: APjAAAXqLj182ZD4ZN0Ox+IhGuOwWx/ejEZe6D76uxod49Jnt9NrYePX
 EJLQo/8nG3e3KeXMBbJoqcVIzYGa7sY=
X-Google-Smtp-Source: APXvYqyFh8CR41gRS/XNKx0eEHFjObJh4Rmr0MyxvtAXn6PhWqRAH/Y2ng7P1x+vtBW7ACiKuHvkyw==
X-Received: by 2002:a17:906:d6a:: with SMTP id
 s10mr29877187ejh.180.1560273674134; 
 Tue, 11 Jun 2019 10:21:14 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id k9sm2403111eja.72.2019.06.11.10.21.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 10:21:13 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2] arm64: Don't unconditionally add -Wno-psabi to
 KBUILD_CFLAGS
Date: Tue, 11 Jun 2019 10:19:32 -0700
Message-Id: <20190611171931.99705-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190607161201.73430-1-natechancellor@gmail.com>
References: <20190607161201.73430-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_102116_539160_5AF3EE09 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Qian Cai <cai@lca.pw>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyBhIEdDQyBvbmx5IG9wdGlvbiwgd2hpY2ggd2FybnMgYWJvdXQgQUJJIGNoYW5nZXMg
d2l0aGluIEdDQywgc28KdW5jb25kaXRpb25hbGx5IGFkZGluZyBpdCBicmVha3MgQ2xhbmcgd2l0
aCB0b25zIG9mOgoKd2FybmluZzogdW5rbm93biB3YXJuaW5nIG9wdGlvbiAnLVduby1wc2FiaScg
Wy1XdW5rbm93bi13YXJuaW5nLW9wdGlvbl0KCmFuZCBsaW5rIHRpbWUgZmFpbHVyZXM6CgpsZC5s
bGQ6IGVycm9yOiB1bmRlZmluZWQgc3ltYm9sOiBfX2VmaXN0dWJfX19zdGFja19jaGtfZ3VhcmQK
Pj4+IHJlZmVyZW5jZWQgYnkgYXJtLXN0dWIuYzo3MwooL2hvbWUvbmF0aGFuL2NibC9saW51eC9k
cml2ZXJzL2Zpcm13YXJlL2VmaS9saWJzdHViL2FybS1zdHViLmM6NzMpCj4+PiAgICAgICAgICAg
ICAgIGFybS1zdHViLnN0dWIubzooX19lZmlzdHViX2luc3RhbGxfbWVtcmVzZXJ2ZV90YWJsZSkK
aW4gYXJjaGl2ZSAuL2RyaXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIvbGliLmEKClRoZXNlIGZh
aWx1cmVzIGNvbWUgZnJvbSB0aGUgbGFjayBvZiAtZm5vLXN0YWNrLXByb3RlY3Rvciwgd2hpY2gg
aXMKYWRkZWQgdmlhIGNjLW9wdGlvbiBpbiBkcml2ZXJzL2Zpcm13YXJlL2VmaS9saWJzdHViL01h
a2VmaWxlLiBXaGVuIGFuCnVua25vd24gZmxhZyBpcyBhZGRlZCB0byBLQlVJTERfQ0ZMQUdTLCBj
bGFuZyB3aWxsIG5vaXNpbHkgd2FybiB0aGF0IGl0CmlzIGlnbm9yaW5nIHRoZSBvcHRpb24gbGlr
ZSBhYm92ZSwgdW5saWtlIGdjYywgd2hvIHdpbGwganVzdCBlcnJvci4KCiQgZWNobyAiaW50IG1h
aW4oKSB7IHJldHVybiAwOyB9IiA+IHRtcC5jCgokIGNsYW5nIC1Xbm8tcHNhYmkgdG1wLmM7IGVj
aG8gJD8Kd2FybmluZzogdW5rbm93biB3YXJuaW5nIG9wdGlvbiAnLVduby1wc2FiaScgWy1XdW5r
bm93bi13YXJuaW5nLW9wdGlvbl0KMSB3YXJuaW5nIGdlbmVyYXRlZC4KMAoKJCBnY2MgLVdzb21l
dGltZXMtdW5pbml0aWFsaXplZCB0bXAuYzsgZWNobyAkPwpnY2M6IGVycm9yOiB1bnJlY29nbml6
ZWQgY29tbWFuZCBsaW5lIG9wdGlvbgrigJgtV3NvbWV0aW1lcy11bmluaXRpYWxpemVk4oCZOyBk
aWQgeW91IG1lYW4g4oCYLVdtYXliZS11bmluaXRpYWxpemVk4oCZPwoxCgpGb3IgY2Mtb3B0aW9u
IHRvIHdvcmsgcHJvcGVybHkgd2l0aCBjbGFuZyBhbmQgYmVoYXZlIGxpa2UgZ2NjLCAtV2Vycm9y
CmlzIG5lZWRlZCwgd2hpY2ggd2FzIGRvbmUgaW4gY29tbWl0IGMzZjBkMGJjNWIwMSAoImtidWls
ZCwgTExWTUxpbnV4OgpBZGQgLVdlcnJvciB0byBjYy1vcHRpb24gdG8gc3VwcG9ydCBjbGFuZyIp
LgoKJCBjbGFuZyAtV2Vycm9yIC1Xbm8tcHNhYmkgdG1wLmM7IGVjaG8gJD8KZXJyb3I6IHVua25v
d24gd2FybmluZyBvcHRpb24gJy1Xbm8tcHNhYmknClstV2Vycm9yLC1XdW5rbm93bi13YXJuaW5n
LW9wdGlvbl0KMQoKQXMgYSBjb25zZXF1ZW5jZSBvZiB0aGlzLCB3aGVuIGFuIHVua25vd24gZmxh
ZyBpcyB1bmNvbmRpdGlvbmFsbHkgYWRkZWQKdG8gS0JVSUxEX0NGTEFHUywgaXQgd2lsbCBjYXVz
ZSBjYy1vcHRpb24gdG8gYWx3YXlzIGZhaWwgYW5kIHRob3NlIGZsYWdzCndpbGwgbmV2ZXIgZ2V0
IGFkZGVkOgoKJCBjbGFuZyAtV2Vycm9yIC1Xbm8tcHNhYmkgLWZuby1zdGFjay1wcm90ZWN0b3Ig
dG1wLmM7IGVjaG8gJD8KZXJyb3I6IHVua25vd24gd2FybmluZyBvcHRpb24gJy1Xbm8tcHNhYmkn
ClstV2Vycm9yLC1XdW5rbm93bi13YXJuaW5nLW9wdGlvbl0KMQoKVGhpcyBjYW4gYmUgc2VlbiB3
aGVuIGNvbXBpbGluZyB0aGUgd2hvbGUga2VybmVsIGFzIHNvbWUgd2FybmluZ3MgdGhhdAphcmUg
bm9ybWFsbHkgZGlzYWJsZWQgKHNlZSBiZWxvdykgc2hvdyB1cC4gVGhlIGZ1bGwgbGlzdCBvZiBm
bGFncwptaXNzaW5nIGZyb20gZHJpdmVycy9maXJtd2FyZS9lZmkvbGlic3R1YiBhcmUgdGhlIGZv
bGxvd2luZyAoZ2F0aGVyZWQKZnJvbSBkaWZmaW5nIC5hcm02NC1zdHViLm8uY21kKToKCi1mbm8t
ZGVsZXRlLW51bGwtcG9pbnRlci1jaGVja3MKLVduby1hZGRyZXNzLW9mLXBhY2tlZC1tZW1iZXIK
LVdmcmFtZS1sYXJnZXItdGhhbj0yMDQ4Ci1Xbm8tdW51c2VkLWNvbnN0LXZhcmlhYmxlCi1mbm8t
c3RyaWN0LW92ZXJmbG93Ci1mbm8tbWVyZ2UtYWxsLWNvbnN0YW50cwotZm5vLXN0YWNrLWNoZWNr
Ci1XZXJyb3I9ZGF0ZS10aW1lCi1XZXJyb3I9aW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXMKLWZm
cmVlc3RhbmRpbmcKLWZuby1zdGFjay1wcm90ZWN0b3IKClVzZSBjYy1kaXNhYmxlLXdhcm5pbmcg
c28gdGhhdCBpdCBnZXRzIGRpc2FibGVkIGZvciBHQ0MgYW5kIGRvZXMgbm90aGluZwpmb3IgQ2xh
bmcuCgpGaXhlczogZWJjYzU5MjhjNWQ5ICgiYXJtNjQ6IFNpbGVuY2UgZ2NjIHdhcm5pbmdzIGFi
b3V0IGFyY2ggQUJJIGRyaWZ0IikKTGluazogaHR0cHM6Ly9naXRodWIuY29tL0NsYW5nQnVpbHRM
aW51eC9saW51eC9pc3N1ZXMvNTExClJlcG9ydGVkLWJ5OiBRaWFuIENhaSA8Y2FpQGxjYS5wdz4K
QWNrZWQtYnk6IERhdmUgTWFydGluIDxEYXZlLk1hcnRpbkBhcm0uY29tPgpSZXZpZXdlZC1ieTog
TmljayBEZXNhdWxuaWVycyA8bmRlc2F1bG5pZXJzQGdvb2dsZS5jb20+ClNpZ25lZC1vZmYtYnk6
IE5hdGhhbiBDaGFuY2VsbG9yIDxuYXRlY2hhbmNlbGxvckBnbWFpbC5jb20+Ci0tLQoKdjEgLT4g
djI6CgoqIEltcHJvdmUgY29tbWl0IG1lc3NhZ2UgZXhwbGFuYXRpb24sIEkgd2Fzbid0IGVudGly
ZWx5IGhhcHB5IHdpdGggdGhlCiAgZmlyc3Qgb25lOyBsZXQgbWUga25vdyBpZiB0aGVyZSBhcmUg
YW55IGlzc3Vlcy9xdWVzdGlvbnMuCgoqIENhcnJ5IGZvcndhcmQgRGF2ZSdzIGFjayBhbmQgTmlj
aydzIHJldmlldyAobGV0IG1lIGtub3cgaWYgeW91CiAgZGlzYWdyZWUgd2l0aCB0aGUgY29tbWl0
IG1lc3Nhc2dlIHJld29yZGluZykuCgogYXJjaC9hcm02NC9NYWtlZmlsZSB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvTWFrZWZpbGUgYi9hcmNoL2FybTY0L01ha2VmaWxlCmluZGV4IDhmYmQ1ODNiMThl
MS4uZTlkMmU1NzhjYmU2IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L01ha2VmaWxlCisrKyBiL2Fy
Y2gvYXJtNjQvTWFrZWZpbGUKQEAgLTUxLDcgKzUxLDcgQEAgZW5kaWYKIAogS0JVSUxEX0NGTEFH
UwkrPSAtbWdlbmVyYWwtcmVncy1vbmx5ICQobHNlaW5zdHIpICQoYnJva2VuZ2FzaW5zdCkKIEtC
VUlMRF9DRkxBR1MJKz0gLWZuby1hc3luY2hyb25vdXMtdW53aW5kLXRhYmxlcwotS0JVSUxEX0NG
TEFHUwkrPSAtV25vLXBzYWJpCitLQlVJTERfQ0ZMQUdTCSs9ICQoY2FsbCBjYy1kaXNhYmxlLXdh
cm5pbmcsIHBzYWJpKQogS0JVSUxEX0FGTEFHUwkrPSAkKGxzZWluc3RyKSAkKGJyb2tlbmdhc2lu
c3QpCiAKIEtCVUlMRF9DRkxBR1MJKz0gJChjYWxsIGNjLW9wdGlvbiwtbWFiaT1scDY0KQotLSAK
Mi4yMi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
