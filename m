Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007FD199B6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EihHL0j7cjpZYxhtzzYm8XyJ/6ooTjw6PpzHqhhBIhg=; b=AN0/1p7jVPtJWQ
	qTFV5nDBpwf06f8Fplm0DaOAy2OGlFdFAT3Bh1Htq7wBDbWZwTT2sht9XeWdATOi6BQxMkyj7kvgR
	qnpRYaA4QZH8Dod2uezmgtzIV0DkvC4Pm/qJ+CscTFVhKP/oUHqNfo8r+IjVr9T0Ya9oDLskoUy8C
	Klhg375Sz14UmhL362T7pj7deqrrDtnM8T/a9xoHdKKy/w27FCpXVckLeFt0nRPyX8sdToJ+eVJE6
	kPwzgzgTtZiq/VdDfdxeaMwFrOb1dF1D8sgRMQe0GWQ69dFMKf3K1GlMAzIwFKgd87aSDpfEyBchg
	zoedo4zuVMWEBVPknxnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJjJ-0006pQ-2z; Tue, 31 Mar 2020 16:27:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJig-0006ZM-64
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=rOfD24MsCxspdy+WQ5VDkADg+JiyYS4IL2WtMoySWYo=; b=u4dB/eQSo9TDNKbkGLTM0mP0a1
 6tQ8ZGOJoXL3I3B5Sdb5wZ86LatUsAMwo37cuA75Ifl6002qvE17YJNDsPBP9DvYix/LREE7/KHpM
 kKCLN+eEHjlxmAc0vI0Yvei3AvQm59lhBPShmllxDtLiCj3BWH56gYX/c7TXK9rCR6xspLia3ODS3
 gR2cfLuZXvayUSEC2dhcXHO7wXL6/qKzgLpeNA7EBYFzDoFKMtpmqt7DtKzVrhvq48Lc6azfDiF2h
 iL14+DEw8arHc3HWdCrhCabjdKoUtXabkZ5bRkqWmx9PYv4Nak5VCRC6K3SugGSAS5fdV1w1Df3qS
 IhLTLiIQ==;
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIYP-0005Hv-My
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:11:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA13631B;
 Tue, 31 Mar 2020 08:11:45 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 13D293F71E;
 Tue, 31 Mar 2020 08:11:44 -0700 (PDT)
Date: Tue, 31 Mar 2020 16:11:34 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 updates for 5.7
Message-ID: <20200331151131.GA17516@mbp>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGludXMsCgpQbGVhc2UgcHVsbCB0aGUgYXJtNjQgdXBkYXRlcyBiZWxvdy4gVGhlIGJ1bGsg
aXMgaW4ta2VybmVsIHBvaW50ZXIKYXV0aGVudGljYXRpb24sIGFjdGl2aXR5IG1vbml0b3JzIGFu
ZCBsb3RzIG9mIGFzbSBzeW1ib2wgYW5ub3RhdGlvbnMuIEkKYWxzbyBxdWV1ZWQgdGhlIHN5c19t
cmVtYXAoKSBwYXRjaCBjb21tZW50aW5nIHRoZSBhc3ltbWV0cnkgaW4gdGhlCmFkZHJlc3MgdW50
YWdnaW5nLgoKVGhhbmtzLgoKVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBmODc4
OGQ4NmFiMjhmNjFmN2I0NmViNmJlMzc1ZjhhNzI2NzgzNjM2OgoKICBMaW51eCA1LjYtcmMzICgy
MDIwLTAyLTIzIDE2OjE3OjQyIC0wODAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9z
aXRvcnkgYXQ6CgogIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC9hcm02NC9saW51eCB0YWdzL2FybTY0LXVwc3RyZWFtCgpmb3IgeW91IHRvIGZldGNoIGNoYW5n
ZXMgdXAgdG8gYjJhODRkZTJhMmRlYjc2YTZhNTE2MDk4NDUzNDFmNTA4YzUxOGMwMzoKCiAgbW0v
bXJlbWFwOiBBZGQgY29tbWVudCBleHBsYWluaW5nIHRoZSB1bnRhZ2dpbmcgYmVoYXZpb3VyIG9m
IG1yZW1hcCgpICgyMDIwLTAzLTI2IDExOjI4OjU3ICswMDAwKQoKLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQphcm02NCB1cGRh
dGVzIGZvciA1Ljc6CgotIEluLWtlcm5lbCBQb2ludGVyIEF1dGhlbnRpY2F0aW9uIHN1cHBvcnQg
KHByZXZpb3VzbHkgb25seSBvZmZlcmVkIHRvCiAgdXNlciBzcGFjZSkuCgotIEFSTSBBY3Rpdml0
eSBNb25pdG9ycyAoQU1VKSBleHRlbnNpb24gc3VwcG9ydCBhbGxvd2luZyBiZXR0ZXIgQ1BVCiAg
dXRpbGlzYXRpb24gbnVtYmVycyBmb3IgdGhlIHNjaGVkdWxlciAoZnJlcXVlbmN5IGludmFyaWFu
Y2UpLgoKLSBNZW1vcnkgaG90LXJlbW92ZSBzdXBwb3J0IGZvciBhcm02NC4KCi0gTG90cyBvZiBh
c20gYW5ub3RhdGlvbnMgKFNZTV8qKSBpbiBwcmVwYXJhdGlvbiBmb3IgdGhlIGluLWtlcm5lbAog
IEJyYW5jaCBUYXJnZXQgSWRlbnRpZmljYXRpb24gKEJUSSkgc3VwcG9ydC4KCi0gYXJtNjQgcGVy
ZiB1cGRhdGVzOiBBUk12OC41LVBNVSA2NC1iaXQgY291bnRlcnMsIHJlZmFjdG9yaW5nIHRoZSBQ
TVUKICBpbml0IGNhbGxiYWNrcywgc3VwcG9ydCBmb3IgbmV3IERUIGNvbXBhdGlibGVzLgoKLSBJ
UHY2IGhlYWRlciBjaGVja3N1bSBvcHRpbWlzYXRpb24uCgotIEZpeGVzOiBTREVJIChzb2Z0d2Fy
ZSBkZWxlZ2F0ZWQgZXhjZXB0aW9uIGludGVyZmFjZSkgZG91YmxlLWxvY2sgb24KICBoaWJlcm5h
dGUgd2l0aCBzaGFyZWQgZXZlbnRzLgoKLSBNaW5vciBjbGVhbi11cHMgYW5kIHJlZmFjdG9yaW5n
OiBjcHVfb3BzIGFjY2Vzc29yLCBjcHVfZG9fc3dpdGNoX21tKCkKICBjb252ZXJ0ZWQgdG8gQywg
Y3B1ZmVhdHVyZSBmaW5hbGlzYXRpb24gaGVscGVyLgoKLSBzeXNfbXJlbWFwKCkgY29tbWVudCBl
eHBsYWluaW5nIHRoZSBhc3ltbWV0cmljIGFkZHJlc3MgdW50YWdnaW5nCiAgYmVoYXZpb3VyLgoK
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQpBbWl0IERhbmllbCBLYWNoaGFwICg4KToKICAgICAgYXJtNjQ6IGNwdWZlYXR1cmU6
IEZpeCBtZXRhLWNhcGFiaWxpdHkgY3B1ZmVhdHVyZSBjaGVjawogICAgICBhcm02NDogcHRyYXV0
aDogQWRkIGJvb3R1cC9ydW50aW1lIGZsYWdzIGZvciBfX2NwdV9zZXR1cAogICAgICBhcm02NDog
Y3B1ZmVhdHVyZTogTW92ZSBjcHUgY2FwYWJpbGl0eSBoZWxwZXJzIGluc2lkZSBDIGZpbGUKICAg
ICAgYXJtNjQ6IGluaXRpYWxpemUgcHRyYXV0aCBrZXlzIGZvciBrZXJuZWwgYm9vdGluZyB0YXNr
CiAgICAgIGFybTY0OiBtYXNrIFBBQyBiaXRzIG9mIF9fYnVpbHRpbl9yZXR1cm5fYWRkcmVzcwog
ICAgICBhcm02NDogX19zaG93X3JlZ3M6IHN0cmlwIFBBQyBmcm9tIGxyIGluIHByaW50awogICAg
ICBhcm02NDogc3VzcGVuZDogcmVzdG9yZSB0aGUga2VybmVsIHB0cmF1dGgga2V5cwogICAgICBs
a2R0bTogYXJtNjQ6IHRlc3Qga2VybmVsIHBvaW50ZXIgYXV0aGVudGljYXRpb24KCkFuZHJldyBN
dXJyYXkgKDMpOgogICAgICBhcm02NDogY3B1ZmVhdHVyZTogRXh0cmFjdCBjYXBwZWQgcGVyZm1v
biBmaWVsZHMKICAgICAgS1ZNOiBhcm02NDogbGltaXQgUE1VIHZlcnNpb24gdG8gUE1VdjMgZm9y
IEFSTXY4LjEKICAgICAgYXJtNjQ6IHBlcmY6IEFkZCBzdXBwb3J0IGZvciBBUk12OC41LVBNVSA2
NC1iaXQgY291bnRlcnMKCkFuc2h1bWFuIEtoYW5kdWFsICgyKToKICAgICAgYXJtNjQvbW06IEhv
bGQgbWVtb3J5IGhvdHBsdWcgbG9jayB3aGlsZSB3YWxraW5nIGZvciBrZXJuZWwgcGFnZSB0YWJs
ZSBkdW1wCiAgICAgIGFybTY0L21tOiBFbmFibGUgbWVtb3J5IGhvdCByZW1vdmUKCkNhdGFsaW4g
TWFyaW5hcyAoNCk6CiAgICAgIE1lcmdlIGJyYW5jaGVzICdmb3ItbmV4dC9tZW1vcnktaG90cmVt
b3ZlJywgJ2Zvci1uZXh0L2FybV9zZGVpJywgJ2Zvci1uZXh0L2FtdScsICdmb3ItbmV4dC9maW5h
bC1jYXAtaGVscGVyJywgJ2Zvci1uZXh0L2NwdV9vcHMtY2xlYW51cCcsICdmb3ItbmV4dC9taXNj
JyBhbmQgJ2Zvci1uZXh0L3BlcmYnIGludG8gZm9yLW5leHQvY29yZQogICAgICBNZXJnZSBicmFu
Y2ggJ2Zvci1uZXh0L2FzbS1hbm5vdGF0aW9ucycgaW50byBmb3ItbmV4dC9jb3JlCiAgICAgIE1l
cmdlIGJyYW5jaCAnZm9yLW5leHQvYXNtLWNsZWFudXBzJyBpbnRvIGZvci1uZXh0L2NvcmUKICAg
ICAgTWVyZ2UgYnJhbmNoICdmb3ItbmV4dC9rZXJuZWwtcHRyYXV0aCcgaW50byBmb3ItbmV4dC9j
b3JlCgpHYXZpbiBTaGFuICg0KToKICAgICAgYXJtNjQva2VybmVsOiBTaW1wbGlmeSBfX2NwdV91
cCgpIGJ5IGJhaWxpbmcgb3V0IGVhcmx5CiAgICAgIGFybTY0OiBEZWNsYXJlIEFDUEkgcGFya2lu
ZyBwcm90b2NvbCBDUFUgb3BlcmF0aW9uIGlmIG5lZWRlZAogICAgICBhcm02NDogUmVuYW1lIGNw
dV9yZWFkX29wcygpIHRvIGluaXRfY3B1X29wcygpCiAgICAgIGFybTY0OiBJbnRyb2R1Y2UgZ2V0
X2NwdV9vcHMoKSBoZWxwZXIgZnVuY3Rpb24KCklvbmVsYSBWb2luZXNjdSAoNyk6CiAgICAgIGFy
bTY0OiBhZGQgc3VwcG9ydCBmb3IgdGhlIEFNVSBleHRlbnNpb24gdjEKICAgICAgYXJtNjQ6IHRy
YXAgdG8gRUwxIGFjY2Vzc2VzIHRvIEFNVSBjb3VudGVycyBmcm9tIEVMMAogICAgICBhcm02NC9r
dm06IGRpc2FibGUgYWNjZXNzIHRvIEFNVSByZWdpc3RlcnMgZnJvbSBrdm0gZ3Vlc3RzCiAgICAg
IERvY3VtZW50YXRpb246IGFybTY0OiBkb2N1bWVudCBzdXBwb3J0IGZvciB0aGUgQU1VIGV4dGVu
c2lvbgogICAgICBjcHVmcmVxOiBhZGQgZnVuY3Rpb24gdG8gZ2V0IHRoZSBoYXJkd2FyZSBtYXgg
ZnJlcXVlbmN5CiAgICAgIGFybTY0OiB1c2UgYWN0aXZpdHkgbW9uaXRvcnMgZm9yIGZyZXF1ZW5j
eSBpbnZhcmlhbmNlCiAgICAgIGNsb2Nrc291cmNlL2RyaXZlcnMvYXJtX2FyY2hfdGltZXI6IHZh
bGlkYXRlIGFyY2hfdGltZXJfcmF0ZQoKSmFtZXMgTW9yc2UgKDIpOgogICAgICBmaXJtd2FyZTog
YXJtX3NkZWk6IGZpeCBkb3VibGUtbG9jayBvbiBoaWJlcm5hdGUgd2l0aCBzaGFyZWQgZXZlbnRz
CiAgICAgIGZpcm13YXJlOiBhcm1fc2RlaTogVXNlIGNwdXNfcmVhZF9sb2NrKCkgdG8gYXZvaWQg
cmFjZXMgd2l0aCBjcHVocAoKS3Jpc3RpbmEgTWFydHNlbmtvICg3KToKICAgICAgYXJtNjQ6IGNw
dWZlYXR1cmU6IGFkZCBwb2ludGVyIGF1dGggbWV0YS1jYXBhYmlsaXRpZXMKICAgICAgYXJtNjQ6
IHJlbmFtZSBwdHJhdXRoIGtleSBzdHJ1Y3R1cmVzIHRvIGJlIHVzZXItc3BlY2lmaWMKICAgICAg
YXJtNjQ6IGluc3RhbGwgdXNlciBwdHJhdXRoIGtleXMgYXQga2VybmVsIGV4aXQgdGltZQogICAg
ICBhcm02NDogY3B1ZmVhdHVyZTogaGFuZGxlIGNvbmZsaWN0cyBiYXNlZCBvbiBjYXBhYmlsaXR5
CiAgICAgIGFybTY0OiBlbmFibGUgcHRyYXV0aCBlYXJsaWVyCiAgICAgIGFybTY0OiBpbml0aWFs
aXplIGFuZCBzd2l0Y2ggcHRyYXV0aCBrZXJuZWwga2V5cwogICAgICBhcm02NDogY29tcGlsZSB0
aGUga2VybmVsIHdpdGggcHRyYXV0aCByZXR1cm4gYWRkcmVzcyBzaWduaW5nCgpLdW5paGlrbyBI
YXlhc2hpICgxKToKICAgICAgYXJtNjQ6IGVudHJ5LWZ0cmFjZS5TOiBGaXggbWlzc2luZyBhcmd1
bWVudCBmb3IgQ09ORklHX0ZVTkNUSU9OX0dSQVBIX1RSQUNFUj15CgpMaSBUYW8gKDEpOgogICAg
ICBhcm02NDoga2V4ZWNfZmlsZTogRml4ZWQgY29kZSBzdHlsZS4KCkxpZ3VhbmcgWmhhbmcgKDIp
OgogICAgICBmaXJtd2FyZTogYXJtX3NkZWk6IGZpeCBwb3NzaWJsZSBkb3VibGUtbG9jayBvbiBo
aWJlcm5hdGUgZXJyb3IgcGF0aAogICAgICBmaXJtd2FyZTogYXJtX3NkZWk6IGNsZWFuIHVwIHNk
ZWlfZXZlbnRfY3JlYXRlKCkKCk1hcmsgQnJvd24gKDE4KToKICAgICAgYXJtNjQ6IGNyeXB0bzog
TW9kZXJuaXplIHNvbWUgZXh0cmEgYXNzZW1ibHkgYW5ub3RhdGlvbnMKICAgICAgYXJtNjQ6IGNy
eXB0bzogTW9kZXJuaXplIG5hbWVzIGZvciBBRVMgZnVuY3Rpb24gbWFjcm9zCiAgICAgIGFybTY0
OiBlbnRyeTogQW5ub3RhdGUgdmVjdG9yIHRhYmxlIGFuZCBoYW5kbGVycyBhcyBjb2RlCiAgICAg
IGFybTY0OiBlbnRyeTogQW5ub3RhdGUgcmV0X2Zyb21fZm9yayBhcyBjb2RlCiAgICAgIGFybTY0
OiBlbnRyeTogQWRkaXRpb25hbCBhbm5vdGF0aW9uIGNvbnZlcnNpb25zIGZvciBlbnRyeS5TCiAg
ICAgIGFybTY0OiBlbnRyeS1mdHJhY2UuUzogQ29udmVydCB0byBtb2Rlcm4gYW5ub3RhdGlvbnMg
Zm9yIGFzc2VtYmx5IGZ1bmN0aW9ucwogICAgICBhcm02NDogZnRyYWNlOiBDb3JyZWN0IGFubm90
YXRpb24gb2YgZnRyYWNlX2NhbGxlciBhc3NlbWJseQogICAgICBhcm02NDogZnRyYWNlOiBNb2Rl
cm5pc2UgYW5ub3RhdGlvbiBvZiByZXR1cm5fdG9faGFuZGxlcgogICAgICBhcm02NDogaGVhZC5T
OiBDb252ZXJ0IHRvIG1vZGVybiBhbm5vdGF0aW9ucyBmb3IgYXNzZW1ibHkgZnVuY3Rpb25zCiAg
ICAgIGFybTY0OiBoZWFkOiBBbm5vdGF0ZSBzdGV4dCBhbmQgcHJlc2VydmVfYm9vdF9hcmdzIGFz
IGNvZGUKICAgICAgYXJtNjQ6IGtlcm5lbDogQ29udmVydCB0byBtb2Rlcm4gYW5ub3RhdGlvbnMg
Zm9yIGFzc2VtYmx5IGRhdGEKICAgICAgYXJtNjQ6IGt2bTogQW5ub3RhdGUgYXNzZW1ibHkgdXNp
bmcgbW9kZXJuIGFubm9hdGlvbnMKICAgICAgYXJtNjQ6IGt2bTogTW9kZXJuaXplIGFubm90YXRp
b24gZm9yIF9fYnBfaGFyZGVuX2h5cF92ZWNzCiAgICAgIGFybTY0OiBrdm06IE1vZGVybml6ZSBf
X3NtY2NjX3dvcmthcm91bmRfMV9zbWNfc3RhcnQgYW5ub3RhdGlvbnMKICAgICAgYXJtNjQ6IHNk
ZWk6IEFubm90YXRlIFNERUkgZW50cnkgcG9pbnRzIHVzaW5nIG5ldyBzdHlsZSBhbm5vdGF0aW9u
cwogICAgICBhcm02NDogdmRzbzogQ29udmVydCB0byBtb2Rlcm4gYXNzZW1ibGVyIGFubm90YXRp
b25zCiAgICAgIGFybTY0OiB2ZHNvMzI6IENvbnZlcnQgdG8gbW9kZXJuIGFzc2VtYmxlciBhbm5v
dGF0aW9ucwogICAgICBhcm02NDogaGVhZDogQ29udmVydCBpbnN0YWxsX2VsMl9zdHViIHRvIFNZ
TV9JTk5FUl9MQUJFTAoKTWFyayBSdXRsYW5kICg1KToKICAgICAgYXJtNjQ6IG1tOiBjb252ZXJ0
IGNwdV9kb19zd2l0Y2hfbW0oKSB0byBDCiAgICAgIGFybTY0OiBlbnRyeTogdW5tYXNrIElSUSBp
biBlbDBfc3AoKQogICAgICBhcm02NDogY3B1ZmVhdHVyZTogYWRkIGNwdXNfaGF2ZV9maW5hbF9j
YXAoKQogICAgICBhcm02NDoga3ZtOiBoeXA6IHVzZSBjcHVzX2hhdmVfZmluYWxfY2FwKCkKICAg
ICAgYXJtNjQ6IHVud2luZDogc3RyaXAgUEFDIGZyb20ga2VybmVsIGFkZHJlc3NlcwoKTWFzYWhp
cm8gWWFtYWRhICgxKToKICAgICAgYXJtNjQ6IGVmaTogYWRkIGVmaS1lbnRyeS5vIHRvIHRhcmdl
dHMgaW5zdGVhZCBvZiBleHRyYS0kKENPTkZJR19FRkkpCgpOYXRoYW4gQ2hhbmNlbGxvciAoMSk6
CiAgICAgIGFybTY0OiBNYXJrIGNhbGxfc21jX2FyY2hfd29ya2Fyb3VuZF8xIGFzIF9fbWF5YmVf
dW51c2VkCgpOaWNrIERlc2F1bG5pZXJzICgxKToKICAgICAgYXJtNjQ6IEtjb25maWc6IHZlcmlm
eSBiaW51dGlscyBzdXBwb3J0IGZvciBBUk02NF9QVFJfQVVUSAoKUmFuZHkgRHVubGFwICgxKToK
ICAgICAgYXJtNjQ6IGZpeCBOVU1BIEtjb25maWcgdHlwb3MKClJlbWkgRGVuaXMtQ291cm1vbnQg
KDMpOgogICAgICBhcm02NDogcmVtb3ZlIGdyYXR1aXRpb3VzL3N0cmF5IC5sdG9yZyBzdGFuemFz
CiAgICAgIGFybTY0OiB1c2UgbW92X3EgaW5zdGVhZCBvZiBsaXRlcmFsIGxkcgogICAgICBhcm02
NDogbW92ZSBraW1hZ2VfdmFkZHIgdG8gLnJvZGF0YQoKUm9iaW4gTXVycGh5ICg0KToKICAgICAg
YXJtNjQ6IHBlcmY6IFJlZmFjdG9yIFBNVSBpbml0IGNhbGxiYWNrcwogICAgICBhcm02NDogcGVy
ZjogU3VwcG9ydCBuZXcgRFQgY29tcGF0aWJsZXMKICAgICAgYXJtNjQ6IGNzdW06IE9wdGltaXNl
IElQdjYgaGVhZGVyIGNoZWNrc3VtCiAgICAgIGFybTY0OiBwZXJmOiBDbGVhbiB1cCBlbmFibGUv
ZGlzYWJsZSBjYWxscwoKVGFrYXNoaSBJd2FpICgxKToKICAgICAgcGVyZjogYXJtLWNjbjogVXNl
IHNjbnByaW50ZigpIGZvciByb2J1c3RuZXNzCgpWaW5jZW56byBGcmFzY2lubyAoMSk6CiAgICAg
IGtjb25maWc6IEFkZCBzdXBwb3J0IGZvciAnYXMtb3B0aW9uJwoKV2lsbCBEZWFjb24gKDIpOgog
ICAgICBhcm02NDogVXBkYXRlIGNvbW1lbnQgZm9yIEFTSUQoKSBtYWNybwogICAgICBtbS9tcmVt
YXA6IEFkZCBjb21tZW50IGV4cGxhaW5pbmcgdGhlIHVudGFnZ2luZyBiZWhhdmlvdXIgb2YgbXJl
bWFwKCkKClpoZW5nIFdlaSAoMSk6CiAgICAgIGFybTY0OiBhZGQgYmxhbmsgYWZ0ZXIgJ2lmJwoK
Z2xpZGVyQGdvb2dsZS5jb20gKDEpOgogICAgICBhcm02NDogZGVmaW5lIF9fYWxsb2NfemVyb2Vk
X3VzZXJfaGlnaHBhZ2UKCmx1YW5zaGkgKDEpOgogICAgICBwZXJmOiBhcm1fc3BlOiBSZW1vdmUg
dW5uZWNlc3NhcnkgemVybyBjaGVjayBvbiAnbnJfcGFnZXMnCgrnjovnqIvliJogKDEpOgogICAg
ICBhcmNoL2FybTY0OiBmaXggdHlwbyBpbiBhIGNvbW1lbnQKCumfqeenkeaJjSAoMik6CiAgICAg
IGFybTY0OiBmaXggc3BlbGxpbmcgbWlzdGFrZSAiY2Egbm90IiAtPiAiY2Fubm90IgogICAgICBh
cm02NDogcmVtb3ZlIHJlZHVuZGFudCBibGFuayBmb3IgJz0nIG9wZXJhdG9yCgogRG9jdW1lbnRh
dGlvbi9hcm02NC9hbXUucnN0ICAgICAgICAgICAgICAgfCAxMTIgKysrKysrKysrCiBEb2N1bWVu
dGF0aW9uL2FybTY0L2Jvb3RpbmcucnN0ICAgICAgICAgICB8ICAxNCArKwogRG9jdW1lbnRhdGlv
bi9hcm02NC9pbmRleC5yc3QgICAgICAgICAgICAgfCAgIDEgKwogYXJjaC9hcm02NC9LY29uZmln
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgNjkgKysrKystCiBhcmNoL2FybTY0L01ha2VmaWxl
ICAgICAgICAgICAgICAgICAgICAgICB8ICAxMSArCiBhcmNoL2FybTY0L2NyeXB0by9hZXMtY2Uu
UyAgICAgICAgICAgICAgICB8ICAgNCArLQogYXJjaC9hcm02NC9jcnlwdG8vYWVzLW1vZGVzLlMg
ICAgICAgICAgICAgfCAgNDggKystLQogYXJjaC9hcm02NC9jcnlwdG8vYWVzLW5lb24uUyAgICAg
ICAgICAgICAgfCAgIDQgKy0KIGFyY2gvYXJtNjQvY3J5cHRvL2doYXNoLWNlLWNvcmUuUyAgICAg
ICAgIHwgIDE2ICstCiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2FzbV9wb2ludGVyX2F1dGguaCB8
ICA2NSArKysrKwogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9hc3NlbWJsZXIuaCAgICAgICAgfCAg
MTYgKy0KIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vY2hlY2tzdW0uaCAgICAgICAgIHwgICA3ICst
CiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2NvbXBpbGVyLmggICAgICAgICB8ICAyNCArKwogYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9jcHVfb3BzLmggICAgICAgICAgfCAgIDggKy0KIGFyY2gvYXJt
NjQvaW5jbHVkZS9hc20vY3B1Y2Fwcy5oICAgICAgICAgIHwgICA1ICstCiBhcmNoL2FybTY0L2lu
Y2x1ZGUvYXNtL2NwdWZlYXR1cmUuaCAgICAgICB8IDEyNSArKysrKysrLS0tCiBhcmNoL2FybTY0
L2luY2x1ZGUvYXNtL2Vzci5oICAgICAgICAgICAgICB8ICAgMiArLQogYXJjaC9hcm02NC9pbmNs
dWRlL2FzbS9rdm1fYXJtLmggICAgICAgICAgfCAgIDEgKwogYXJjaC9hcm02NC9pbmNsdWRlL2Fz
bS9rdm1fYXNtLmggICAgICAgICAgfCAgIDQgKwogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9rdm1f
bW11LmggICAgICAgICAgfCAgIDkgKy0KIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vbWVtb3J5Lmgg
ICAgICAgICAgIHwgICAxICsKIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vbW11LmggICAgICAgICAg
ICAgIHwgIDEwICstCiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL21tdV9jb250ZXh0LmggICAgICB8
ICAgMiArCiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BhZ2UuaCAgICAgICAgICAgICB8ICAgNCAr
CiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BlcmZfZXZlbnQuaCAgICAgICB8ICAgMyArLQogYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9wb2ludGVyX2F1dGguaCAgICAgfCAgNTAgKystLQogYXJjaC9h
cm02NC9pbmNsdWRlL2FzbS9wcm9jLWZucy5oICAgICAgICAgfCAgIDIgLQogYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9wcm9jZXNzb3IuaCAgICAgICAgfCAgIDMgKy0KIGFyY2gvYXJtNjQvaW5jbHVk
ZS9hc20vc21wLmggICAgICAgICAgICAgIHwgIDEyICsKIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20v
c3RhY2twcm90ZWN0b3IuaCAgIHwgICA1ICsKIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVn
LmggICAgICAgICAgIHwgIDQ4ICsrKysKIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vdG9wb2xvZ3ku
aCAgICAgICAgIHwgICA5ICsKIGFyY2gvYXJtNjQva2VybmVsL01ha2VmaWxlICAgICAgICAgICAg
ICAgIHwgICAyICstCiBhcmNoL2FybTY0L2tlcm5lbC9hcm12OF9kZXByZWNhdGVkLmMgICAgICB8
ICAgMiArLQogYXJjaC9hcm02NC9rZXJuZWwvYXNtLW9mZnNldHMuYyAgICAgICAgICAgfCAgMTYg
KysKIGFyY2gvYXJtNjQva2VybmVsL2NwdS1yZXNldC5TICAgICAgICAgICAgIHwgICAyICstCiBh
cmNoL2FybTY0L2tlcm5lbC9jcHVfZXJyYXRhLmMgICAgICAgICAgICB8ICAxOCArLQogYXJjaC9h
cm02NC9rZXJuZWwvY3B1X29wcy5jICAgICAgICAgICAgICAgfCAgMTEgKy0KIGFyY2gvYXJtNjQv
a2VybmVsL2NwdWZlYXR1cmUuYyAgICAgICAgICAgIHwgMTY1ICsrKysrKysrKysrLS0KIGFyY2gv
YXJtNjQva2VybmVsL2NwdWlkbGUuYyAgICAgICAgICAgICAgIHwgICA5ICstCiBhcmNoL2FybTY0
L2tlcm5lbC9lbnRyeS1jb21tb24uYyAgICAgICAgICB8ICAgMiArLQogYXJjaC9hcm02NC9rZXJu
ZWwvZW50cnktZnRyYWNlLlMgICAgICAgICAgfCAgNDggKystLQogYXJjaC9hcm02NC9rZXJuZWwv
ZW50cnkuUyAgICAgICAgICAgICAgICAgfCAxMjEgKysrKystLS0tLQogYXJjaC9hcm02NC9rZXJu
ZWwvaGVhZC5TICAgICAgICAgICAgICAgICAgfCAgODYgKysrLS0tLQogYXJjaC9hcm02NC9rZXJu
ZWwvaGliZXJuYXRlLWFzbS5TICAgICAgICAgfCAgIDIgLQogYXJjaC9hcm02NC9rZXJuZWwvaHlw
LXN0dWIuUyAgICAgICAgICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtNjQva2VybmVsL21hY2hpbmVf
a2V4ZWNfZmlsZS5jICAgIHwgICAyICstCiBhcmNoL2FybTY0L2tlcm5lbC9wZXJmX2V2ZW50LmMg
ICAgICAgICAgICB8IDMzOCArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQogYXJjaC9hcm02NC9r
ZXJuZWwvcG9pbnRlcl9hdXRoLmMgICAgICAgICAgfCAgIDcgKy0KIGFyY2gvYXJtNjQva2VybmVs
L3Byb2Nlc3MuYyAgICAgICAgICAgICAgIHwgICA1ICstCiBhcmNoL2FybTY0L2tlcm5lbC9wdHJh
Y2UuYyAgICAgICAgICAgICAgICB8ICAxNiArLQogYXJjaC9hcm02NC9rZXJuZWwvcmVsb2NhdGVf
a2VybmVsLlMgICAgICAgfCAgIDQgKy0KIGFyY2gvYXJtNjQva2VybmVsL3NldHVwLmMgICAgICAg
ICAgICAgICAgIHwgICA4ICstCiBhcmNoL2FybTY0L2tlcm5lbC9zbGVlcC5TICAgICAgICAgICAg
ICAgICB8ICAgMiArCiBhcmNoL2FybTY0L2tlcm5lbC9zbXAuYyAgICAgICAgICAgICAgICAgICB8
IDE1OSArKysrKysrLS0tLS0tCiBhcmNoL2FybTY0L2tlcm5lbC9zdGFja3RyYWNlLmMgICAgICAg
ICAgICB8ICAgNSArLQogYXJjaC9hcm02NC9rZXJuZWwvdG9wb2xvZ3kuYyAgICAgICAgICAgICAg
fCAxODAgKysrKysrKysrKysrKysKIGFyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMg
ICAgICAgIHwgICA0ICstCiBhcmNoL2FybTY0L2tlcm5lbC92ZHNvMzIvc2lncmV0dXJuLlMgICAg
ICB8ICAyMyArLQogYXJjaC9hcm02NC9rdm0vaHlwLWluaXQuUyAgICAgICAgICAgICAgICAgfCAg
MTggKy0KIGFyY2gvYXJtNjQva3ZtL2h5cC5TICAgICAgICAgICAgICAgICAgICAgIHwgICA0ICst
CiBhcmNoL2FybTY0L2t2bS9oeXAvZnBzaW1kLlMgICAgICAgICAgICAgICB8ICAgOCArLQogYXJj
aC9hcm02NC9rdm0vaHlwL2h5cC1lbnRyeS5TICAgICAgICAgICAgfCAgMjcgKystCiBhcmNoL2Fy
bTY0L2t2bS9oeXAvc3dpdGNoLmMgICAgICAgICAgICAgICB8ICAyOCArKy0KIGFyY2gvYXJtNjQv
a3ZtL2h5cC9zeXNyZWctc3IuYyAgICAgICAgICAgIHwgICA4ICstCiBhcmNoL2FybTY0L2t2bS9o
eXAvdGxiLmMgICAgICAgICAgICAgICAgICB8ICAgOCArLQogYXJjaC9hcm02NC9rdm0vc3lzX3Jl
Z3MuYyAgICAgICAgICAgICAgICAgfCAxMDMgKysrKysrKy0KIGFyY2gvYXJtNjQvbGliL2NzdW0u
YyAgICAgICAgICAgICAgICAgICAgIHwgIDI3ICsrKwogYXJjaC9hcm02NC9saWIvc3RyY21wLlMg
ICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtNjQvbW0vY29udGV4dC5jICAgICAg
ICAgICAgICAgICAgIHwgIDMyICsrLQogYXJjaC9hcm02NC9tbS9tbXUuYyAgICAgICAgICAgICAg
ICAgICAgICAgfCAzNzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCiBhcmNoL2FybTY0
L21tL3Byb2MuUyAgICAgICAgICAgICAgICAgICAgICB8IDEwNCArKysrLS0tLQogYXJjaC9hcm02
NC9tbS9wdGR1bXBfZGVidWdmcy5jICAgICAgICAgICAgfCAgIDQgKwogZHJpdmVycy9iYXNlL2Fy
Y2hfdG9wb2xvZ3kuYyAgICAgICAgICAgICAgfCAgMTIgKwogZHJpdmVycy9jbG9ja3NvdXJjZS9h
cm1fYXJjaF90aW1lci5jICAgICAgfCAgMTggKy0KIGRyaXZlcnMvY3B1ZnJlcS9jcHVmcmVxLmMg
ICAgICAgICAgICAgICAgIHwgIDIwICsrCiBkcml2ZXJzL2Zpcm13YXJlL2FybV9zZGVpLmMgICAg
ICAgICAgICAgICB8ICA3MSArKystLS0KIGRyaXZlcnMvbWlzYy9sa2R0bS9idWdzLmMgICAgICAg
ICAgICAgICAgIHwgIDM2ICsrKwogZHJpdmVycy9taXNjL2xrZHRtL2NvcmUuYyAgICAgICAgICAg
ICAgICAgfCAgIDEgKwogZHJpdmVycy9taXNjL2xrZHRtL2xrZHRtLmggICAgICAgICAgICAgICAg
fCAgIDEgKwogZHJpdmVycy9wZXJmL2FybS1jY24uYyAgICAgICAgICAgICAgICAgICAgfCAgMjAg
Ky0KIGRyaXZlcnMvcGVyZi9hcm1fc3BlX3BtdS5jICAgICAgICAgICAgICAgIHwgICAyICstCiBp
bmNsdWRlL2xpbnV4L2FyY2hfdG9wb2xvZ3kuaCAgICAgICAgICAgICB8ICAgMiArCiBpbmNsdWRl
L2xpbnV4L2NwdWZyZXEuaCAgICAgICAgICAgICAgICAgICB8ICAgNSArCiBpbmNsdWRlL2xpbnV4
L3BlcmYvYXJtX3BtdS5oICAgICAgICAgICAgICB8ICAgMSArCiBpbmNsdWRlL2xpbnV4L3N0YWNr
cHJvdGVjdG9yLmggICAgICAgICAgICB8ICAgMiArLQogbW0vbXJlbWFwLmMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgMTAgKwogc2NyaXB0cy9LY29uZmlnLmluY2x1ZGUgICAgICAg
ICAgICAgICAgICAgfCAgIDYgKwogODggZmlsZXMgY2hhbmdlZCwgMjE5MiBpbnNlcnRpb25zKCsp
LCA3MDAgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9hcm02
NC9hbXUucnN0CiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9hc21f
cG9pbnRlcl9hdXRoLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2luY2x1ZGUvYXNt
L2NvbXBpbGVyLmgKCi0tIApDYXRhbGluCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
