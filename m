Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6B718D1AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 15:55:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M2T+o2OpCdkrrxUrCbZUPkvbBOzW9SPsWv2uSxm7zDk=; b=pNPUppGZKQBe20
	q4UkVQ725D48xSsusjoSLD+89/4KSfAsoIkN5OpwpRiOXbqt7nX199O1ODxiAkO1WnUmko4g5ABfW
	FA98x/ckfhCFFnogei09spZKdRasTpMeiMxThqpQopfKOqJpEEWSaXiILnSNUnOIINcGLK9fAYKQP
	m/t2Es8VO/d9V7fZOOV30pVTjOmP0MpVLaWn32j/BzKbb5Za0O6KhDaJk/G8FYXZRnQtc1iB4w3n/
	tzucDYJnecd/3jB63xMddHK7fpb4CTncg+c4oxDQU+lIeAji1TG9lWFykDndEA1OMur4Rk52oAddh
	tHctgmsIjlpQtZhKst1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJ30-0005Ie-Lr; Fri, 20 Mar 2020 14:54:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJ2r-0005Hz-Vt
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 14:54:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B02CC1FB;
 Fri, 20 Mar 2020 07:54:43 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DA973F792;
 Fri, 20 Mar 2020 07:54:40 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mips@vger.kernel.org, x86@kernel.org
Subject: [PATCH v5 00/26] Introduce common headers for vDSO
Date: Fri, 20 Mar 2020 14:53:25 +0000
Message-Id: <20200320145351.32292-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_075446_115315_D583A021 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Peter Collingbourne <pcc@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Andrei Vagin <avagin@openvz.org>
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
Cls0XSBnaXQ6Ly9saW51eC1hcm0ub3JnL2xpbnV4LXZmLmdpdCBjb21tb24taGVhZGVycy92NQoK
Q2hhbmdlczoKLS0tLS0tLS0KdjU6CiAgLSBEcm9wcGVkIFVJTlRQVFJfTUFYIGNoZWNrIHBhdGNo
LgogIC0gSW50cm9kdWNlZCBhIG5ldyBoZWFkZXJzIGNsZWFudXAgcGF0Y2guCiAgLSBBZGRyZXNz
ZWQgcmV2aWV3IGNvbW1lbnRzLgogIC0gUmViYXNlZCBvbiB0aXAvdGltZXJzL2NvcmUuCnY0Ogog
IC0gRHJvcHBlZCB2RFNPIG9wdGltaXphdGlvbiBwYXRjaCBmb3IgYXJtNjQuCiAgLSBJbnRyb2R1
Y2UgYSBuZXcgcGF0Y2ggdG8gZHJvcCBkZXBlbmRlbmN5IGZyb20gVEFTS19TSVpFXzMyIG9uIGFy
bTY0LgogIC0gQWRkcmVzc2VkIHJldmlldyBjb21tZW50cy4KICAtIFJlYmFzZWQgb24gdGlwL3Rp
bWVycy9jb3JlLgp2MzoKICAtIENoYW5nZWQgdGhlIG5hbWVzcGFjZSBmcm9tIGNvbW1vbiB0byB2
ZHNvLgogIC0gQWRkcmVzc2VkIGFuIGlzc3VlIGludm9sdmluZyBwYXJpc2MgbW9kdWxlcyBjb21w
aWxhdGlvbi4KICAtIEFkZGVkIHZkc28gaGVhZGVyIGZvciBjbG9ja3NvdXJjZS5oLgogIC0gQWRk
cmVzc2VkIHJldmlldyBjb21tZW50cy4KICAtIFJlYmFzZWQgb24gdGlwL3RpbWVycy9jb3JlLgp2
MjoKICAtIEFkZHJlc3NlZCByZXZpZXcgY29tbWVudHMgZm9yIGNsYW5nIHN1cHBvcnQuCiAgLSBS
ZWJhc2VkIG9uIDUuNi1yYzQuCgpDYzogQ2F0YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNA
YXJtLmNvbT4KQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+CkNjOiBBcm5kIEJlcmdt
YW5uIDxhcm5kQGFybmRiLmRlPgpDYzogUnVzc2VsbCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcu
dWs+CkNjOiBQYXVsIEJ1cnRvbiA8cGF1bC5idXJ0b25AbWlwcy5jb20+CkNjOiBUaG9tYXMgR2xl
aXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KQ2M6IEFuZHkgTHV0b21pcnNraSA8bHV0b0BrZXJu
ZWwub3JnPgpDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhhdC5jb20+CkNjOiBCb3Jpc2xhdiBQ
ZXRrb3YgPGJwQGFsaWVuOC5kZT4KQ2M6IFN0ZXBoZW4gQm95ZCA8c2JveWRAa2VybmVsLm9yZz4K
Q2M6IE1hcmsgU2FseXp5biA8c2FseXp5bkBhbmRyb2lkLmNvbT4KQ2M6IEtlZXMgQ29vayA8a2Vl
c2Nvb2tAY2hyb21pdW0ub3JnPgpDYzogUGV0ZXIgQ29sbGluZ2JvdXJuZSA8cGNjQGdvb2dsZS5j
b20+CkNjOiBEbWl0cnkgU2Fmb25vdiA8MHg3ZjQ1NGM0NkBnbWFpbC5jb20+CkNjOiBBbmRyZWkg
VmFnaW4gPGF2YWdpbkBvcGVudnoub3JnPgpDYzogTmljayBEZXNhdWxuaWVycyA8bmRlc2F1bG5p
ZXJzQGdvb2dsZS5jb20+CkNjOiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgpDYzogTWFy
ayBSdXRsYW5kIDxNYXJrLlJ1dGxhbmRAYXJtLmNvbT4KU2lnbmVkLW9mZi1ieTogVmluY2Vuem8g
RnJhc2Npbm8gPHZpbmNlbnpvLmZyYXNjaW5vQGFybS5jb20+CgpWaW5jZW56byBGcmFzY2lubyAo
MjYpOgogIGxpbnV4L2NvbnN0Lmg6IEV4dHJhY3QgY29tbW9uIGhlYWRlciBmb3IgdkRTTwogIGxp
bnV4L2JpdHMuaDogRXh0cmFjdCBjb21tb24gaGVhZGVyIGZvciB2RFNPCiAgbGludXgvbGltaXRz
Lmg6IEV4dHJhY3QgY29tbW9uIGhlYWRlciBmb3IgdkRTTwogIHg4NjpJbnRyb2R1Y2UgYXNtL3Zk
c28vY2xvY2tzb3VyY2UuaAogIGFybTogSW50cm9kdWNlIGFzbS92ZHNvL2Nsb2Nrc291cmNlLmgK
ICBhcm02NDogSW50cm9kdWNlIGFzbS92ZHNvL2Nsb2Nrc291cmNlLmgKICBtaXBzOiBJbnRyb2R1
Y2UgYXNtL3Zkc28vY2xvY2tzb3VyY2UuaAogIGxpbnV4L2Nsb2Nrc291cmNlLmg6IEV4dHJhY3Qg
Y29tbW9uIGhlYWRlciBmb3IgdkRTTwogIGxpbnV4L21hdGg2NC5oOiBFeHRyYWN0IGNvbW1vbiBo
ZWFkZXIgZm9yIHZEU08KICBsaW51eC90aW1lLmg6IEV4dHJhY3QgY29tbW9uIGhlYWRlciBmb3Ig
dkRTTwogIGxpbnV4L3RpbWUzMi5oOiBFeHRyYWN0IGNvbW1vbiBoZWFkZXIgZm9yIHZEU08KICBs
aW51eC90aW1lNjQuaDogRXh0cmFjdCBjb21tb24gaGVhZGVyIGZvciB2RFNPCiAgbGludXgvamlm
Zmllcy5oOiBFeHRyYWN0IGNvbW1vbiBoZWFkZXIgZm9yIHZEU08KICBsaW51eC9rdGltZS5oOiBF
eHRyYWN0IGNvbW1vbiBoZWFkZXIgZm9yIHZEU08KICBjb21tb246IEludHJvZHVjZSBwcm9jZXNz
b3IuaAogIHNjcmlwdHM6IEZpeCB0aGUgaW5jbHVzaW9uIG9yZGVyIGluIG1vZHBvc3QKICBsaW51
eC9lbGZub3RlLmg6IFJlcGxhY2UgZWxmLmggd2l0aCBVQVBJIGVxdWl2YWxlbnQKICBhcm02NDog
dmRzbzMyOiBDb2RlIGNsZWFuIHVwCiAgYXJtNjQ6IEludHJvZHVjZSBhc20vdmRzby9wcm9jZXNz
b3IuaAogIGFybTY0OiB2ZHNvOiBJbmNsdWRlIGNvbW1vbiBoZWFkZXJzIGluIHRoZSB2ZHNvIGxp
YnJhcnkKICBhcm02NDogdmRzbzMyOiBJbmNsdWRlIGNvbW1vbiBoZWFkZXJzIGluIHRoZSB2ZHNv
IGxpYnJhcnkKICBtaXBzOiB2ZHNvOiBFbmFibGUgbWlwcyB0byB1c2UgY29tbW9uIGhlYWRlcnMK
ICB4ODY6IHZkc286IEVuYWJsZSB4ODYgdG8gdXNlIGNvbW1vbiBoZWFkZXJzCiAgYXJtOiB2ZHNv
OiBFbmFibGUgYXJtIHRvIHVzZSBjb21tb24gaGVhZGVycwogIGxpYjogdmRzbzogRW5hYmxlIGNv
bW1vbiBoZWFkZXJzCiAgYXJtNjQ6IHZkc28zMjogRW5hYmxlIENsYW5nIENvbXBpbGF0aW9uCgog
YXJjaC9hcm0vaW5jbHVkZS9hc20vY2xvY2tzb3VyY2UuaCAgICAgICAgICAgIHwgIDYgKy0tCiBh
cmNoL2FybS9pbmNsdWRlL2FzbS9jcDE1LmggICAgICAgICAgICAgICAgICAgfCAyMCArLS0tLS0t
LS0tCiBhcmNoL2FybS9pbmNsdWRlL2FzbS9wcm9jZXNzb3IuaCAgICAgICAgICAgICAgfCAxMSAr
LS0tLS0KIGFyY2gvYXJtL2luY2x1ZGUvYXNtL3Zkc28vY2xvY2tzb3VyY2UuaCAgICAgICB8ICA4
ICsrKysKIGFyY2gvYXJtL2luY2x1ZGUvYXNtL3Zkc28vY3AxNS5oICAgICAgICAgICAgICB8IDM4
ICsrKysrKysrKysrKysrKysrKysKIGFyY2gvYXJtL2luY2x1ZGUvYXNtL3Zkc28vZ2V0dGltZW9m
ZGF5LmggICAgICB8ICA0ICstCiBhcmNoL2FybS9pbmNsdWRlL2FzbS92ZHNvL3Byb2Nlc3Nvci5o
ICAgICAgICAgfCAyMiArKysrKysrKysrKwogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9jbG9ja3Nv
dXJjZS5oICAgICAgICAgIHwgIDMgKy0KIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vcHJvY2Vzc29y
LmggICAgICAgICAgICB8ICA3ICstLS0KIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vdmRzby9jbG9j
a3NvdXJjZS5oICAgICB8ICA4ICsrKysKIC4uLi9pbmNsdWRlL2FzbS92ZHNvL2NvbXBhdF9nZXR0
aW1lb2ZkYXkuaCAgICB8IDEwICstLS0tCiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL3Zkc28vZ2V0
dGltZW9mZGF5LmggICAgfCAgMSAtCiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL3Zkc28vcHJvY2Vz
c29yLmggICAgICAgfCAxNyArKysrKysrKysKIGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmdldHRp
bWVvZmRheS5jICAgICAgICB8ICAyIC0KIGFyY2gvYXJtNjQva2VybmVsL3Zkc28zMi9NYWtlZmls
ZSAgICAgICAgICAgICB8IDExICsrKysrKwogYXJjaC9hcm02NC9rZXJuZWwvdmRzbzMyL3ZnZXR0
aW1lb2ZkYXkuYyAgICAgIHwgMTQgLS0tLS0tLQogYXJjaC9taXBzL2luY2x1ZGUvYXNtL2Nsb2Nr
c291cmNlLmggICAgICAgICAgIHwgIDQgKy0KIGFyY2gvbWlwcy9pbmNsdWRlL2FzbS9wcm9jZXNz
b3IuaCAgICAgICAgICAgICB8IDE2ICstLS0tLS0tCiBhcmNoL21pcHMvaW5jbHVkZS9hc20vdmRz
by9jbG9ja3NvdXJjZS5oICAgICAgfCAgOSArKysrKwogYXJjaC9taXBzL2luY2x1ZGUvYXNtL3Zk
c28vZ2V0dGltZW9mZGF5LmggICAgIHwgIDQgLS0KIGFyY2gvbWlwcy9pbmNsdWRlL2FzbS92ZHNv
L3Byb2Nlc3Nvci5oICAgICAgICB8IDI3ICsrKysrKysrKysrKysKIGFyY2gveDg2L2luY2x1ZGUv
YXNtL2Nsb2Nrc291cmNlLmggICAgICAgICAgICB8ICA1ICstLQogYXJjaC94ODYvaW5jbHVkZS9h
c20vcHJvY2Vzc29yLmggICAgICAgICAgICAgIHwgMTIgKy0tLS0tCiBhcmNoL3g4Ni9pbmNsdWRl
L2FzbS92ZHNvL2Nsb2Nrc291cmNlLmggICAgICAgfCAxMCArKysrKwogYXJjaC94ODYvaW5jbHVk
ZS9hc20vdmRzby9wcm9jZXNzb3IuaCAgICAgICAgIHwgMjMgKysrKysrKysrKysKIGluY2x1ZGUv
bGludXgvYml0cy5oICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBpbmNsdWRlL2xp
bnV4L2Nsb2Nrc291cmNlLmggICAgICAgICAgICAgICAgICAgfCAxMSArLS0tLS0KIGluY2x1ZGUv
bGludXgvY29uc3QuaCAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICstLQogaW5jbHVkZS9s
aW51eC9lbGZub3RlLmggICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIGluY2x1ZGUvbGlu
dXgvamlmZmllcy5oICAgICAgICAgICAgICAgICAgICAgICB8ICA0ICstCiBpbmNsdWRlL2xpbnV4
L2t0aW1lLmggICAgICAgICAgICAgICAgICAgICAgICAgfCAgOSArLS0tLQogaW5jbHVkZS9saW51
eC9saW1pdHMuaCAgICAgICAgICAgICAgICAgICAgICAgIHwgMTMgKy0tLS0tLQogaW5jbHVkZS9s
aW51eC9tYXRoNjQuaCAgICAgICAgICAgICAgICAgICAgICAgIHwgMjAgKy0tLS0tLS0tLQogaW5j
bHVkZS9saW51eC90aW1lLmggICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDUgKy0tCiBpbmNs
dWRlL2xpbnV4L3RpbWUzMi5oICAgICAgICAgICAgICAgICAgICAgICAgfCAxNCArLS0tLS0tCiBp
bmNsdWRlL2xpbnV4L3RpbWU2NC5oICAgICAgICAgICAgICAgICAgICAgICAgfCAxMCArLS0tLQog
aW5jbHVkZS92ZHNvL2JpdHMuaCAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDkgKysrKysK
IGluY2x1ZGUvdmRzby9jbG9ja3NvdXJjZS5oICAgICAgICAgICAgICAgICAgICB8IDIzICsrKysr
KysrKysrCiBpbmNsdWRlL3Zkc28vY29uc3QuaCAgICAgICAgICAgICAgICAgICAgICAgICAgfCAx
MCArKysrKwogaW5jbHVkZS92ZHNvL2RhdGFwYWdlLmggICAgICAgICAgICAgICAgICAgICAgIHwg
MzMgKysrKysrKysrKysrKystLQogaW5jbHVkZS92ZHNvL2ppZmZpZXMuaCAgICAgICAgICAgICAg
ICAgICAgICAgIHwgMTEgKysrKysrCiBpbmNsdWRlL3Zkc28va3RpbWUuaCAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAxNiArKysrKysrKwogaW5jbHVkZS92ZHNvL2xpbWl0cy5oICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgMTkgKysrKysrKysrKwogaW5jbHVkZS92ZHNvL21hdGg2NC5oICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgMjQgKysrKysrKysrKysrCiBpbmNsdWRlL3Zkc28vcHJv
Y2Vzc29yLmggICAgICAgICAgICAgICAgICAgICAgfCAxNCArKysrKysrCiBpbmNsdWRlL3Zkc28v
dGltZS5oICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxMiArKysrKysKIGluY2x1ZGUvdmRz
by90aW1lMzIuaCAgICAgICAgICAgICAgICAgICAgICAgICB8IDE3ICsrKysrKysrKwogaW5jbHVk
ZS92ZHNvL3RpbWU2NC5oICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTQgKysrKysrKwogbGli
L3Zkc28vZ2V0dGltZW9mZGF5LmMgICAgICAgICAgICAgICAgICAgICAgIHwgMjIgLS0tLS0tLS0t
LS0KIHNjcmlwdHMvbW9kL21vZHBvc3QuYyAgICAgICAgICAgICAgICAgICAgICAgICB8ICA2ICsr
LQogNTAgZmlsZXMgY2hhbmdlZCwgNDA0IGluc2VydGlvbnMoKyksIDIxMyBkZWxldGlvbnMoLSkK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9pbmNsdWRlL2FzbS92ZHNvL2Nsb2Nrc291cmNl
LmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9pbmNsdWRlL2FzbS92ZHNvL2NwMTUuaAog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2luY2x1ZGUvYXNtL3Zkc28vcHJvY2Vzc29yLmgK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL3Zkc28vY2xvY2tzb3Vy
Y2UuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vdmRzby9wcm9j
ZXNzb3IuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvbWlwcy9pbmNsdWRlL2FzbS92ZHNvL2Ns
b2Nrc291cmNlLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL21pcHMvaW5jbHVkZS9hc20vdmRz
by9wcm9jZXNzb3IuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gveDg2L2luY2x1ZGUvYXNtL3Zk
c28vY2xvY2tzb3VyY2UuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gveDg2L2luY2x1ZGUvYXNt
L3Zkc28vcHJvY2Vzc29yLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3Zkc28vYml0cy5o
CiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS92ZHNvL2Nsb2Nrc291cmNlLmgKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL3Zkc28vY29uc3QuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1
ZGUvdmRzby9qaWZmaWVzLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3Zkc28va3RpbWUu
aAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvdmRzby9saW1pdHMuaAogY3JlYXRlIG1vZGUg
MTAwNjQ0IGluY2x1ZGUvdmRzby9tYXRoNjQuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUv
dmRzby9wcm9jZXNzb3IuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvdmRzby90aW1lLmgK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3Zkc28vdGltZTMyLmgKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBpbmNsdWRlL3Zkc28vdGltZTY0LmgKCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
