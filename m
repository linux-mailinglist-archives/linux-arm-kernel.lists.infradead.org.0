Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7836D184B2B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:45:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=faz54xCnQTExPskMMFZY+DTW0DtoOX5DTSI4LB5t89I=; b=ioD6+bJ1cgbTDN
	onmjPywmdCjcVw6C4YvF43BHT56kivlfrO0J99uca0Bw74doDMQaG1OxcBH5AH4xTjalA16cNwA+M
	V5yPcLACyq5CMvIZpiCSX1nW7N/4rt5Fi/gJRVXS8q4BWqkO6LCvyVU4AfZlK95WNJt9kxrqqFQYy
	aduOgTLwZVMLFnH3RgAOf0PHQpA/sUYx9IFxKS93Dha8h/SWyNGSOnRI2crnnn30b9mwpJWyQooMJ
	Uu703LiDy/hH8/niq08Tl7G42GztRdvfro6/9vQmahktNm1uc3ICl7LkNFfYvjtNYLAIbuZS6wpTC
	5zSjsXIVXzL9nkeFDk4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmUU-000514-Nm; Fri, 13 Mar 2020 15:44:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmTm-0004dL-9n
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:44:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8913331B;
 Fri, 13 Mar 2020 08:44:05 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E0C53F67D;
 Fri, 13 Mar 2020 08:44:02 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
Subject: [PATCH v3 00/26] Introduce common headers for vDSO
Date: Fri, 13 Mar 2020 15:43:19 +0000
Message-Id: <20200313154345.56760-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084406_500613_1E5FD1E5 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Andrei Vagin <avagin@openvz.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmFjayBpbiBKdWx5IGxhc3QgeWVhciB3ZSBzdGFydGVkIGhhdmluZyBhIHByb2JsZW0gaW4gYnVp
bGRpbmcgY29tcGF0CnZEU09zIG9uIGFybTY0IFsxXSBbMl0gdGhhdCB3YXMgbm90IHByZXNlbnQg
d2hlbiB0aGUgYXJtNjQgcG9ydGluZyB0bwp0aGUgVW5pZmllZCB2RFNPIHdhcyBkb25lLiBJbiBw
YXJ0aWN1bGFyIHdoZW4gdGhlIGNvbXBhdCB2RFNPIG9uIHN1Y2gKYXJjaGl0ZWN0dXJlIGlzIGJ1
aWx0IHdpdGggZ2NjIGl0IGdlbmVyYXRlcyB0aGUgd2FybmluZyBiZWxvdzoKCkluIGZpbGUgaW5j
bHVkZWQgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vdGhyZWFkX2luZm8uaDoxNzowLAog
ICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3RocmVhZF9pbmZvLmg6MzgsCiAg
ICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcHJlZW1wdC5oOjUs
CiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvcHJlZW1wdC5oOjc4LAogICAg
ICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3NwaW5sb2NrLmg6NTEsCiAgICAgICAg
ICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvc2VxbG9jay5oOjM2LAogICAgICAgICAgICAg
ICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3RpbWUuaDo2LAogICAgICAgICAgICAgICAgIGZyb20g
Li9saWIvdmRzby9nZXR0aW1lb2ZkYXkuYzo3LAogICAgICAgICAgICAgICAgIGZyb20gPGNvbW1h
bmQtbGluZT46MDoKLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oOiBJbiBmdW5jdGlv
biDigJhfX3RhZ19zZXTigJk6Ci4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9tZW1vcnkuaDoyMzM6
MTU6IHdhcm5pbmc6IGNhc3QgZnJvbSBwb2ludGVyCiAgICAgICAgICAgICAgICB0byBpbnRlZ2Vy
IG9mIGRpZmZlcmVudCBzaXplIFstV3BvaW50ZXItdG8taW50LWNhc3RdCiAgdTY0IF9fYWRkciA9
ICh1NjQpYWRkciAmIH5fX3RhZ19zaGlmdGVkKDB4ZmYpOwogICAgICAgICAgICAgICBeCkluIGZp
bGUgaW5jbHVkZWQgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS1od2RlZi5o
Ojg6MCwKICAgICAgICAgICAgICAgICBmcm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wcm9j
ZXNzb3IuaDozNCwKICAgICAgICAgICAgICAgICBmcm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2Fz
bS9lbGYuaDoxMTgsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvZWxmLmg6
NSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9lbGZub3RlLmg6NjIsCiAg
ICAgICAgICAgICAgICAgZnJvbSBhcmNoL2FybTY0L2tlcm5lbC92ZHNvMzIvbm90ZS5jOjExOgou
L2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vbWVtb3J5Lmg6IEluIGZ1bmN0aW9uIOKAmF9fdGFnX3Nl
dOKAmToKLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oOjIzMzoxNTogd2FybmluZzog
Y2FzdCBmcm9tIHBvaW50ZXIKICAgICAgICAgICAgICAgIHRvIGludGVnZXIgb2YgZGlmZmVyZW50
IHNpemUgWy1XcG9pbnRlci10by1pbnQtY2FzdF0KICB1NjQgX19hZGRyID0gKHU2NClhZGRyICYg
fl9fdGFnX3NoaWZ0ZWQoMHhmZik7CgpUaGUgc2FtZSBwb3J0aW5nIGRvZXMgbm90IGJ1aWxkIGF0
IGFsbCB3aGVuIHRoZSBzZWxlY3RlZCBjb21waWxlciBpcwpjbGFuZy4KCkkgc3RhcnRlZCBhbiBp
bnZlc3RpZ2F0aW9uIHRvIHRyeSB0byB1bmRlcnN0YW5kIGJldHRlciB0aGUgcHJvYmxlbSBhbmQK
YWZ0ZXIgdmFyaW91cyBkaXNjdXNzaW9ucyBhdCBQbHVtYmVycyBhbmQgUmVjaXBlcyBsYXN0IHll
YXIgdGhlCmNvbmNsdXNpb24gd2FzIHRoYXQgdGhlIHZEU08gbGlicmFyeSBhcyBpdCBzdGFuZHMg
aXQgaXMgaW5jbHVkaW5nIG1vcmUKaGVhZGVycyB0aGF0IGl0IG5lZWRzLiBJbiBwYXJ0aWN1bGFy
LCBiZWluZyBhIHVzZXItc3BhY2UgbGlicmFyeSwgaXQKc2hvdWxkIHJlcXVpcmUgb25seSB0aGUg
VUFQSSBhbmQgYSBtaW5pbWFsIHZEU08ga2VybmVsIGludGVyZmFjZSBpbnN0ZWFkCm9mIGFsbCB0
aGUga2VybmVsLXJlbGF0ZWQgaW5saW5lIGZ1bmN0aW9ucyB3aGljaCBhcmUgbm90IGRpcmVjdGx5
IHVzZWQKYW5kIGluIHNvbWUgY2FzZXMgY2FuIGhhdmUgc2lkZSBlZmZlY3RzLgoKVG8gc29sdmUg
dGhlIHByb2JsZW0sIEkgZGVjaWRlZCB0byB1c2UgdGhlIGFwcHJvYWNoIGJlbG93OgogICogRXh0
cmFjdCBmcm9tIGluY2x1ZGUvbGludXgvIHRoZSB2RFNPIHJlcXVpcmVkIGtlcm5lbCBpbnRlcmZh
Y2UKICAgIGFuZCBwbGFjZSBpdCBpbiBpbmNsdWRlL3Zkc28vCiAgKiBNYWtlIHN1cmUgdGhhdCB3
aGVyZSBtZWFuaW5nZnVsIHRoZSBrZXJuZWwgaW5jbHVkZXMgInZkc28iIGhlYWRlcnMuCiAgKiBM
aW1pdCB0aGUgdkRTTyBsaWJyYXJ5IHRvIGluY2x1ZGUgaGVhZGVycyBjb21pbmcgb25seSBmcm9t
IFVBUEkKICAgIGFuZCAidmRzbyIgKHdpdGggMiBleGNlcHRpb25zIGNvbXBpbGVyLmggZm9yIGJh
cnJpZXJzIGFuZCBwYXJhbS5oCiAgICBmb3IgSFopLgogICogQWRhcHQgYWxsIHRoZSBhcmNoaXRl
Y3R1cmVzIHRoYXQgc3VwcG9ydCB0aGUgdW5pZmllZCB2RFNPIGxpYnJhcnkKICAgIHRvIHVzZSAi
dmRzbyIgaGVhZGVycy4KCkFjY29yZGluZyB0byBtZSB0aGlzIGFwcHJvYWNoIGFsbG93cyB1cCB0
byBleGVyY2lzZSBhIGJldHRlciBjb250cm9sIG9uCndoYXQgdGhlIHZEU08gbGlicmFyeSBjYW4g
aW5jbHVkZSBhbmQgdG8gcHJldmVudCBwb3RlbnRpYWwgaXNzdWVzIGluCmZ1dHVyZS4KClRoaXMg
cGF0Y2ggc2VyaWVzIGNvbnRhaW5zIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgZGVzY3JpYmVk
IGFwcHJvYWNoLgoKVGhlICJ2ZHNvIiBoZWFkZXJzIGhhdmUgYmVlbiB2ZXJpZmllZCBvbiBhbGwg
dGhlIGFyY2hpdGVjdHVyZXMgdGhhdCBzdXBwb3J0CnVuaWZpZWQgdkRTTyB1c2luZyB0aGUgdmRz
b3Rlc3QgWzNdIHRlc3RzdWl0ZSBmb3Igd2hhdCBjb25jZXJucyB0aGUgdkRTTyBwYXJ0CmFuZCBy
YW5kY29uZmlnIHRvIHZlcmlmeSB0aGF0IHRoZXkgYXJlIGluY2x1ZGVkIGluIHRoZSBjb3JyZWN0
IHBsYWNlcy4KClRvIHNpbXBsaWZ5IHRoZSB0ZXN0aW5nLCBhIGNvcHkgb2YgdGhlIHBhdGNoc2V0
IG9uIHRvcCBvZiBhIHJlY2VudCBsaW51eAp0cmVlIGNhbiBiZSBmb3VuZCBhdCBbNF0uCgpbMV0g
aHR0cHM6Ly9naXRodWIuY29tL0NsYW5nQnVpbHRMaW51eC9saW51eC9pc3N1ZXMvNTk1ClsyXSBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMTkwOTI2MTUxNzA0LkdIOTY4OUBhcnJha2lz
LmVtZWEuYXJtLmNvbQpbM10gaHR0cHM6Ly9naXRodWIuY29tL25hdGhhbmx5bmNoL3Zkc290ZXN0
Cls0XSBnaXQ6Ly9saW51eC1hcm0ub3JnL2xpbnV4LXZmLmdpdCBjb21tb24taGVhZGVycy92MwoK
Q2hhbmdlczoKLS0tLS0tLS0KdjM6CiAgLSBDaGFuZ2VkIHRoZSBuYW1lc3BhY2UgZnJvbSBjb21t
b24gdG8gdmRzby4KICAtIEFkZHJlc3NlZCBhbiBpc3N1ZSBpbnZvbHZpbmcgcGFyaXNjIG1vZHVs
ZXMgY29tcGlsYXRpb24uCiAgLSBBZGRlZCB2ZHNvIGhlYWRlciBmb3IgY2xvY2tzb3VyY2UuaC4K
ICAtIEFkZHJlc3NlZCByZXZpZXcgY29tbWVudHMuCiAgLSBSZWJhc2VkIG9uIHRpcC90aW1lcnMv
Y29yZS4KdjI6CiAgLSBBZGRyZXNzZWQgcmV2aWV3IGNvbW1lbnRzIGZvciBjbGFuZyBzdXBwb3J0
LgogIC0gUmViYXNlZCBvbiA1LjYtcmM0LgoKQ2M6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5t
YXJpbmFzQGFybS5jb20+CkNjOiBXaWxsIERlYWNvbiA8d2lsbC5kZWFjb25AYXJtLmNvbT4KQ2M6
IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+CkNjOiBSdXNzZWxsIEtpbmcgPGxpbnV4QGFy
bWxpbnV4Lm9yZy51az4KQ2M6IFBhdWwgQnVydG9uIDxwYXVsLmJ1cnRvbkBtaXBzLmNvbT4KQ2M6
IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogQW5keSBMdXRvbWlyc2tp
IDxsdXRvQGtlcm5lbC5vcmc+CkNjOiBJbmdvIE1vbG5hciA8bWluZ29AcmVkaGF0LmNvbT4KQ2M6
IEJvcmlzbGF2IFBldGtvdiA8YnBAYWxpZW44LmRlPgpDYzogU3RlcGhlbiBCb3lkIDxzYm95ZEBr
ZXJuZWwub3JnPgpDYzogTWFyayBTYWx5enluIDxzYWx5enluQGFuZHJvaWQuY29tPgpDYzogS2Vl
cyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+CkNjOiBQZXRlciBDb2xsaW5nYm91cm5lIDxw
Y2NAZ29vZ2xlLmNvbT4KQ2M6IERtaXRyeSBTYWZvbm92IDwweDdmNDU0YzQ2QGdtYWlsLmNvbT4K
Q2M6IEFuZHJlaSBWYWdpbiA8YXZhZ2luQG9wZW52ei5vcmc+CkNjOiBOaWNrIERlc2F1bG5pZXJz
IDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KQ2M6IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5v
cmc+CkNjOiBNYXJrIFJ1dGxhbmQgPE1hcmsuUnV0bGFuZEBhcm0uY29tPgpTaWduZWQtb2ZmLWJ5
OiBWaW5jZW56byBGcmFzY2lubyA8dmluY2Vuem8uZnJhc2Npbm9AYXJtLmNvbT4KClZpbmNlbnpv
IEZyYXNjaW5vICgyNik6CiAgbGludXgvY29uc3QuaDogRXh0cmFjdCBjb21tb24gaGVhZGVyIGZv
ciB2RFNPCiAgbGludXgvYml0cy5oOiBFeHRyYWN0IGNvbW1vbiBoZWFkZXIgZm9yIHZEU08KICBs
aW51eC9saW1pdHMuaDogRXh0cmFjdCBjb21tb24gaGVhZGVyIGZvciB2RFNPCiAgeDg2OkludHJv
ZHVjZSBhc20vdmRzby9jbG9ja3NvdXJjZS5oCiAgYXJtOiBJbnRyb2R1Y2UgYXNtL3Zkc28vY2xv
Y2tzb3VyY2UuaAogIGFybTY0OiBJbnRyb2R1Y2UgYXNtL3Zkc28vY2xvY2tzb3VyY2UuaAogIG1p
cHM6IEludHJvZHVjZSBhc20vdmRzby9jbG9ja3NvdXJjZS5oCiAgbGludXgvY2xvY2tzb3VyY2Uu
aDogRXh0cmFjdCBjb21tb24gaGVhZGVyIGZvciB2RFNPCiAgbGludXgvbWF0aDY0Lmg6IEV4dHJh
Y3QgY29tbW9uIGhlYWRlciBmb3IgdkRTTwogIGxpbnV4L3RpbWUuaDogRXh0cmFjdCBjb21tb24g
aGVhZGVyIGZvciB2RFNPCiAgbGludXgvdGltZTMyLmg6IEV4dHJhY3QgY29tbW9uIGhlYWRlciBm
b3IgdkRTTwogIGxpbnV4L3RpbWU2NC5oOiBFeHRyYWN0IGNvbW1vbiBoZWFkZXIgZm9yIHZEU08K
ICBsaW51eC9qaWZmaWVzLmg6IEV4dHJhY3QgY29tbW9uIGhlYWRlciBmb3IgdkRTTwogIGxpbnV4
L2t0aW1lLmg6IEV4dHJhY3QgY29tbW9uIGhlYWRlciBmb3IgdkRTTwogIGNvbW1vbjogSW50cm9k
dWNlIHByb2Nlc3Nvci5oCiAgc2NyaXB0czogRml4IHRoZSBpbmNsdXNpb24gb3JkZXIgaW4gbW9k
cG9zdAogIGxpbnV4L2VsZm5vdGUuaDogUmVwbGFjZSBlbGYuaCB3aXRoIFVBUEkgZXF1aXZhbGVu
dAogIGFybTY0OiBJbnRyb2R1Y2UgYXNtL3Zkc28vcHJvY2Vzc29yLmgKICBhcm02NDogdmRzbzog
SW5jbHVkZSBjb21tb24gaGVhZGVycyBpbiB0aGUgdmRzbyBsaWJyYXJ5CiAgYXJtNjQ6IHZkc28z
MjogSW5jbHVkZSBjb21tb24gaGVhZGVycyBpbiB0aGUgdmRzbyBsaWJyYXJ5CiAgYXJtNjQ6IElu
dHJvZHVjZSBhc20vdmRzby9hcmNoX3RpbWVyLmgKICBtaXBzOiB2ZHNvOiBFbmFibGUgbWlwcyB0
byB1c2UgY29tbW9uIGhlYWRlcnMKICB4ODY6IHZkc286IEVuYWJsZSB4ODYgdG8gdXNlIGNvbW1v
biBoZWFkZXJzCiAgYXJtOiB2ZHNvOiBFbmFibGUgYXJtIHRvIHVzZSBjb21tb24gaGVhZGVycwog
IGxpYjogdmRzbzogRW5hYmxlIGNvbW1vbiBoZWFkZXJzCiAgYXJtNjQ6IHZkc28zMjogRW5hYmxl
IENsYW5nIENvbXBpbGF0aW9uCgogYXJjaC9hcm0vaW5jbHVkZS9hc20vY2xvY2tzb3VyY2UuaCAg
ICAgICAgICAgIHwgIDYgKy0tCiBhcmNoL2FybS9pbmNsdWRlL2FzbS9jcDE1LmggICAgICAgICAg
ICAgICAgICAgfCAyMCArLS0tLS0tLS0tCiBhcmNoL2FybS9pbmNsdWRlL2FzbS9wcm9jZXNzb3Iu
aCAgICAgICAgICAgICAgfCAxMSArLS0tLS0KIGFyY2gvYXJtL2luY2x1ZGUvYXNtL3Zkc28vY2xv
Y2tzb3VyY2UuaCAgICAgICB8ICA4ICsrKysKIGFyY2gvYXJtL2luY2x1ZGUvYXNtL3Zkc28vY3Ax
NS5oICAgICAgICAgICAgICB8IDM4ICsrKysrKysrKysrKysrKysrKysKIGFyY2gvYXJtL2luY2x1
ZGUvYXNtL3Zkc28vZ2V0dGltZW9mZGF5LmggICAgICB8ICA0ICstCiBhcmNoL2FybS9pbmNsdWRl
L2FzbS92ZHNvL3Byb2Nlc3Nvci5oICAgICAgICAgfCAyMiArKysrKysrKysrKwogYXJjaC9hcm02
NC9pbmNsdWRlL2FzbS9hcmNoX3RpbWVyLmggICAgICAgICAgIHwgMjkgKysrLS0tLS0tLS0tLS0K
IGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vY2xvY2tzb3VyY2UuaCAgICAgICAgICB8ICAzICstCiBh
cmNoL2FybTY0L2luY2x1ZGUvYXNtL3Byb2Nlc3Nvci5oICAgICAgICAgICAgfCAxNiArLS0tLS0t
LQogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS92ZHNvL2FyY2hfdGltZXIuaCAgICAgIHwgMzMgKysr
KysrKysrKysrKysrKwogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS92ZHNvL2Nsb2Nrc291cmNlLmgg
ICAgIHwgIDggKysrKwogLi4uL2luY2x1ZGUvYXNtL3Zkc28vY29tcGF0X2dldHRpbWVvZmRheS5o
ICAgIHwgIDIgKy0KIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vdmRzby9nZXR0aW1lb2ZkYXkuaCAg
ICB8ICA4ICsrLS0KIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vdmRzby9wcm9jZXNzb3IuaCAgICAg
ICB8IDMxICsrKysrKysrKysrKysrKwogYXJjaC9hcm02NC9rZXJuZWwvdmRzby92Z2V0dGltZW9m
ZGF5LmMgICAgICAgIHwgIDIgLQogYXJjaC9hcm02NC9rZXJuZWwvdmRzbzMyL01ha2VmaWxlICAg
ICAgICAgICAgIHwgMTEgKysrKysrCiBhcmNoL2FybTY0L2tlcm5lbC92ZHNvMzIvdmdldHRpbWVv
ZmRheS5jICAgICAgfCAgMyAtLQogYXJjaC9taXBzL2luY2x1ZGUvYXNtL2Nsb2Nrc291cmNlLmgg
ICAgICAgICAgIHwgIDQgKy0KIGFyY2gvbWlwcy9pbmNsdWRlL2FzbS9wcm9jZXNzb3IuaCAgICAg
ICAgICAgICB8IDE2ICstLS0tLS0tCiBhcmNoL21pcHMvaW5jbHVkZS9hc20vdmRzby9jbG9ja3Nv
dXJjZS5oICAgICAgfCAgOSArKysrKwogYXJjaC9taXBzL2luY2x1ZGUvYXNtL3Zkc28vZ2V0dGlt
ZW9mZGF5LmggICAgIHwgIDQgLS0KIGFyY2gvbWlwcy9pbmNsdWRlL2FzbS92ZHNvL3Byb2Nlc3Nv
ci5oICAgICAgICB8IDI3ICsrKysrKysrKysrKysKIGFyY2gveDg2L2luY2x1ZGUvYXNtL2Nsb2Nr
c291cmNlLmggICAgICAgICAgICB8ICA1ICstLQogYXJjaC94ODYvaW5jbHVkZS9hc20vcHJvY2Vz
c29yLmggICAgICAgICAgICAgIHwgMTIgKy0tLS0tCiBhcmNoL3g4Ni9pbmNsdWRlL2FzbS92ZHNv
L2Nsb2Nrc291cmNlLmggICAgICAgfCAxMCArKysrKwogYXJjaC94ODYvaW5jbHVkZS9hc20vdmRz
by9wcm9jZXNzb3IuaCAgICAgICAgIHwgMjMgKysrKysrKysrKysKIGluY2x1ZGUvbGludXgvYml0
cy5oICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBpbmNsdWRlL2xpbnV4L2Nsb2Nr
c291cmNlLmggICAgICAgICAgICAgICAgICAgfCAxMSArLS0tLS0KIGluY2x1ZGUvbGludXgvY29u
c3QuaCAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICstLQogaW5jbHVkZS9saW51eC9lbGZu
b3RlLmggICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIGluY2x1ZGUvbGludXgvamlmZmll
cy5oICAgICAgICAgICAgICAgICAgICAgICB8ICA0ICstCiBpbmNsdWRlL2xpbnV4L2t0aW1lLmgg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgOSArLS0tLQogaW5jbHVkZS9saW51eC9saW1pdHMu
aCAgICAgICAgICAgICAgICAgICAgICAgIHwgMTMgKy0tLS0tLQogaW5jbHVkZS9saW51eC9tYXRo
NjQuaCAgICAgICAgICAgICAgICAgICAgICAgIHwgMjAgKy0tLS0tLS0tLQogaW5jbHVkZS9saW51
eC90aW1lLmggICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKy0tCiBpbmNsdWRlL2xpbnV4
L3RpbWUzMi5oICAgICAgICAgICAgICAgICAgICAgICAgfCAxNCArLS0tLS0tCiBpbmNsdWRlL2xp
bnV4L3RpbWU2NC5oICAgICAgICAgICAgICAgICAgICAgICAgfCAxMCArLS0tLQogaW5jbHVkZS92
ZHNvL2JpdHMuaCAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDkgKysrKysKIGluY2x1ZGUv
dmRzby9jbG9ja3NvdXJjZS5oICAgICAgICAgICAgICAgICAgICB8IDIzICsrKysrKysrKysrCiBp
bmNsdWRlL3Zkc28vY29uc3QuaCAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxMCArKysrKwog
aW5jbHVkZS92ZHNvL2RhdGFwYWdlLmggICAgICAgICAgICAgICAgICAgICAgIHwgMzMgKysrKysr
KysrKysrKystLQogaW5jbHVkZS92ZHNvL2ppZmZpZXMuaCAgICAgICAgICAgICAgICAgICAgICAg
IHwgMTEgKysrKysrCiBpbmNsdWRlL3Zkc28va3RpbWUuaCAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAxNiArKysrKysrKwogaW5jbHVkZS92ZHNvL2xpbWl0cy5oICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgMTggKysrKysrKysrCiBpbmNsdWRlL3Zkc28vbWF0aDY0LmggICAgICAgICAgICAg
ICAgICAgICAgICAgfCAyNCArKysrKysrKysrKysKIGluY2x1ZGUvdmRzby9wcm9jZXNzb3IuaCAg
ICAgICAgICAgICAgICAgICAgICB8IDE0ICsrKysrKysKIGluY2x1ZGUvdmRzby90aW1lLmggICAg
ICAgICAgICAgICAgICAgICAgICAgICB8IDEyICsrKysrKwogaW5jbHVkZS92ZHNvL3RpbWUzMi5o
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTcgKysrKysrKysrCiBpbmNsdWRlL3Zkc28vdGlt
ZTY0LmggICAgICAgICAgICAgICAgICAgICAgICAgfCAxNCArKysrKysrCiBsaWIvdmRzby9nZXR0
aW1lb2ZkYXkuYyAgICAgICAgICAgICAgICAgICAgICAgfCAyMiAtLS0tLS0tLS0tLQogc2NyaXB0
cy9tb2QvbW9kcG9zdC5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDYgKystCiA1MiBmaWxl
cyBjaGFuZ2VkLCA0NTkgaW5zZXJ0aW9ucygrKSwgMjMwIGRlbGV0aW9ucygtKQogY3JlYXRlIG1v
ZGUgMTAwNjQ0IGFyY2gvYXJtL2luY2x1ZGUvYXNtL3Zkc28vY2xvY2tzb3VyY2UuaAogY3JlYXRl
IG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2luY2x1ZGUvYXNtL3Zkc28vY3AxNS5oCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgYXJjaC9hcm0vaW5jbHVkZS9hc20vdmRzby9wcm9jZXNzb3IuaAogY3JlYXRlIG1v
ZGUgMTAwNjQ0IGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vdmRzby9hcmNoX3RpbWVyLmgKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL3Zkc28vY2xvY2tzb3VyY2UuaAog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vdmRzby9wcm9jZXNzb3Iu
aAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvbWlwcy9pbmNsdWRlL2FzbS92ZHNvL2Nsb2Nrc291
cmNlLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL21pcHMvaW5jbHVkZS9hc20vdmRzby9wcm9j
ZXNzb3IuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gveDg2L2luY2x1ZGUvYXNtL3Zkc28vY2xv
Y2tzb3VyY2UuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gveDg2L2luY2x1ZGUvYXNtL3Zkc28v
cHJvY2Vzc29yLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3Zkc28vYml0cy5oCiBjcmVh
dGUgbW9kZSAxMDA2NDQgaW5jbHVkZS92ZHNvL2Nsb2Nrc291cmNlLmgKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBpbmNsdWRlL3Zkc28vY29uc3QuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvdmRz
by9qaWZmaWVzLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3Zkc28va3RpbWUuaAogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvdmRzby9saW1pdHMuaAogY3JlYXRlIG1vZGUgMTAwNjQ0
IGluY2x1ZGUvdmRzby9tYXRoNjQuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvdmRzby9w
cm9jZXNzb3IuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvdmRzby90aW1lLmgKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3Zkc28vdGltZTMyLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBp
bmNsdWRlL3Zkc28vdGltZTY0LmgKCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
