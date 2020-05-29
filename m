Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECE91E8B48
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 00:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cLxc9HzXtjsdePmtt27mXrgTO61uX70cFHmv+46JIyI=; b=BNRkCFkv3w5V+K
	gHf3LVxvRfw6afYA9vH/8h5JCUIXxcF/pee9Piq1rVKAnHpi7tk7twPNI7TrhdJ20DJGWsZg14IOo
	98tv6efeT5M2K/Kn8SI8MVb5LNGwUXuFiFOLAnTF9WTxNzlS/nof2gcHOW2C7BDepbYNb8K2Jh2nC
	GeF0kiDtgvccFoS+sNPyDNgX4mmI5qP4D1SzVE4xX2jjuDe/ZV+hO968X133K38D12SQPsEJKFScF
	EjOMMXrGn8m1Ow+6sYsIM4pqnezJa6N6RdGG9fG3GFp0CqqbryHSRQi8RwSnNhmVA7aOZojpZjIzH
	1U+/9YW6bLydClwvIieg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jenQh-00079x-I6; Fri, 29 May 2020 22:24:43 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jenQY-00079E-Mt
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 22:24:36 +0000
Received: from mail-qt1-f177.google.com ([209.85.160.177]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MkpOZ-1jHrTD012l-00mKUo for <linux-arm-kernel@lists.infradead.org>; Sat,
 30 May 2020 00:24:32 +0200
Received: by mail-qt1-f177.google.com with SMTP id y1so3266374qtv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 15:24:30 -0700 (PDT)
X-Gm-Message-State: AOAM533EA5KBKwuyrU5M2Iehu3sR2y12ogDK0Bv9uZUnM49SXxVEFAWS
 UwJxoHeZ0n7QtmH/+4BoeFKmW6KWVkCEXCuijnI=
X-Google-Smtp-Source: ABdhPJwcqeLLq3HaogVaSrvkE13vUIHWcmlBjBXWDRJMpwek2o/j8rzzevrqzfUrSzmsQZ4anE5t0eLoAMz/Vg9oI0A=
X-Received: by 2002:ac8:1844:: with SMTP id n4mr11016879qtk.142.1590791069803; 
 Fri, 29 May 2020 15:24:29 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 30 May 2020 00:24:13 +0200
X-Gmail-Original-Message-ID: <CAK8P3a05i=j3xh6bGti+-pkQWFid5=Em_NCprz1J9Jp9TDmTeQ@mail.gmail.com>
Message-ID: <CAK8P3a05i=j3xh6bGti+-pkQWFid5=Em_NCprz1J9Jp9TDmTeQ@mail.gmail.com>
Subject: [GIT PULL] ARM: SoC fixes for v5.7
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Provags-ID: V03:K1:sSAwydXqHDeUHyHAce1Xt8lzzXBVV+5jPwnI3vPYTLvqMXv2m+o
 fGTVIjTzKgLmeW8Km6wwC7Xru3fg2LyLkAaeIUVV/YLTGfiNF7FX3776hoR9Z21WiTArCRt
 8TEh7Ut36aStM3H1egOUFv23X16H9RDSfeResDaSfzT5fKM+ca7QXrXEnqP1f9vsvdl0pa9
 SEgPpBYc/29XPk1wWE8Xw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mu1sEBaIS00=:qeiyHRfd0iejIpxZipd/PV
 +2YCSe/lxed19hAk3juK1McaNvZ6fCKZuz14fY7pcOxvOqSEXz3XEbvgwxxiAnJDLexG3sOUq
 zhHsRq44IYjH2q0xH1CY8oRNTKqKtOiRlmjfpkXyJmh7VQ3G2NJ5wXX7LDO+123eVhZsl4rFo
 bMbmMbUdYegigLeB401kxkaHdl5YawqxKChkoSD2FuEOSBtlwNLE8lq0vW7/zEWV2NPrjl8iY
 PwzOFGcZ/IvDrWBAew53q5dlcE3DZhN2IP8qB83KZ8JEpOsKSaMjP+s7waFgwaV5CwpGQIYwI
 1Iyg84sM8S/rr0DsC2sidejEEf/kPdXOQEZyXzIpI3emCEOZ2SezoZwDf5AssYvKbOSym8SuP
 6JczkQ4KbM2PNLzliNrHtwGf7E7aDmRv7hGGC9+ITSQclq2P/uVW5eldPvbKRSP09gb7ldnox
 JA1EBt0U4L58gdhV3V7K3l6foBIjdnWtDbw5tgY7dRdyGV4TGnd730TDa5Wq0MCydHZp7NA/7
 ck49kWyQkLZk6mJmZlhZWPT5lS0n2aG5hEagQaawEbuIEDIGidWU8R6UurIkVzsoLhqM9u4VQ
 sZuqFKL99I5UGdcqeqFLpcqQ/jZ+iprnMO39w5wN5Gmlbx6S/vAII/mL9NwMYwJuPYgoARij/
 BuljIKGmFHnizN6Qr+ioPbgbI5gTJRrr6XzI+6GtBLCBM3nWZFMdy1eoV8nkIRoSVWrBjFBq/
 x/HYJ+9HY/HZNkiZZ9rMZbx9uot5PyPfpIvrufT3GqPc0qoHAFdQw9T3DyPMA8s+xGoPAozT4
 xF2ni5Tw8kQ8sGOu3S+GHXz65bbZvZtKNiWszHdO0Pyhsu7QmQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_152435_038296_2F611440 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
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
Cc: Tony Lindgren <tony@atomide.com>, Lubomir Rintel <lkundrak@v3.sk>,
 SoC Team <soc@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBiOWJiZTZlZDYzYjJiOWYyYzllZTVj
YmQwZjJjOTQ2YTI3MjNmNGNlOgoKICBMaW51eCA1LjctcmM2ICgyMDIwLTA1LTE3IDE2OjQ4OjM3
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zb2Mvc29jLmdpdAp0YWdz
L2FybXNvYy1maXhlcy12NS43Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gOTk3MDZk
NjJmYjUwNDg2ZWFkYjQ0NDFlYWVkMzExNDkxZmQ3YWRkZjoKCiAgTWVyZ2UgdGFnICdvbWFwLWZv
ci12NS43L2Nwc3ctZml4ZXMtc2lnbmVkJyBvZgpnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvdG1saW5kL2xpbnV4LW9tYXAgaW50bwphcm0vZml4ZXMgKDIwMjAt
MDUtMjYgMDA6MTg6NDggKzAyMDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkFSTTogU29DIGZpeGVzIGZvciB2NS43CgpU
aGlzIHRpbWUgdGhlcmUgaXMgb25lIGZpeCBmb3IgdGhlIGVycm9yIHBhdGggaW4gdGhlIG1lZGlh
dGVrIGNtZHEgZHJpdmVyCih1c2VkIGJ5IHRoZWlyIHZpZGVvIGRyaXZlcikgYW5kIGEgY291cGxl
IG9mIGRldmljZXRyZWUgZml4ZXMsIG1vc3RseQpmb3IgMzItYml0IEFSTSwgYW5kIGZhaXJseSBo
YXJtbGVzczoKCi0gT24gT01BUDIgdGhlcmUgd2VyZSBhIGZldyByZWdyZXNzaW9ucyBpbiB0aGUg
ZXRoZXJuZXQgZHJpdmVycywKICBvbmUgb2YgdGhlbSBsZWFkaW5nIHRvIGFuIGV4dGVybmFsIGFi
b3J0IHRyYXAKCi0gT25lIFJhc3BiZXJyeSBQaSB2ZXJzaW9uIGhhZCBhIG1pc2NvbmZpZ3VyZWQg
TEVECgotIEludGVycnVwdHMgb24gQnJvYWRjb20gTlNQIHdlcmUgc2xpZ2h0bHkgbWlzY29uZmln
dXJlZAoKLSBPbmUgaS5NWDZxIGJvYXJkIGhhZCBpc3N1ZXMgd2l0aCBncmFwaGljcyBtb2RlIHNl
dHRpbmcKCi0gT24gbW1wMyB0aGVyZSBhcmUgc29tZSBtaW5vciBmaXhlcyB0aGF0IHdlcmUgc3Vi
bWl0dGVkIGZvcgogIHY1Ljggd2l0aCBhIGNjOnN0YWJsZSB0YWcsIHNvIEkgZW5kZWQgdXAgcGlj
a2luZyB0aGVtIHVwCiAgaGVyZSBhcyB3ZWxsCgotIFRoZSBNZWRpYXRlayBWaWRlbyBDb2RlYyBu
ZWVkcyB0byBydW4gYXQgYSBoaWdoZXIgZnJlcXVlbmN5CiAgdGhhbiBjb25maWd1cmVkIG9yaWdp
bmFsbHkKClNpZ25lZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+CgotLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCkFybmQgQmVyZ21hbm4gKDUpOgogICAgICBNZXJnZSBicmFuY2ggJ21tcC9maXhlcycgaW50
byBhcm0vZml4ZXMKICAgICAgTWVyZ2UgdGFnICdpbXgtZml4ZXMtNS43LTInIG9mCmdpdDovL2dp
dC5rZXJuZWwub3JnLy4uLi9zaGF3bmd1by9saW51eCBpbnRvIGFybS9maXhlcwogICAgICBNZXJn
ZSBicmFuY2ggJ3Y1LjctZml4ZXMnIG9mCmdpdDovL2dpdC5rZXJuZWwub3JnLy4uLi9tYXR0aGlh
cy5iZ2cvbGludXggaW50byBhcm0vZml4ZXMKICAgICAgTWVyZ2UgdGFnICdhcm0tc29jL2Zvci01
LjcvZGV2aWNldHJlZS1maXhlcy1wYXJ0Mi12Micgb2YKaHR0cHM6Ly9naXRodWIuY29tL0Jyb2Fk
Y29tL3N0YmxpbnV4IGludG8gYXJtL2ZpeGVzCiAgICAgIE1lcmdlIHRhZyAnb21hcC1mb3ItdjUu
Ny9jcHN3LWZpeGVzLXNpZ25lZCcgb2YKZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvLi4uL3RtbGluZC9s
aW51eC1vbWFwIGludG8gYXJtL2ZpeGVzCgpEZW5uaXMgWUMgSHNpZWggKDEpOgogICAgICBzb2M6
IG1lZGlhdGVrOiBjbWRxOiByZXR1cm4gc2VuZCBtc2cgZXJyb3IgY29kZQoKR3J5Z29yaWkgU3Ry
YXNoa28gKDIpOgogICAgICBBUk06IGR0czogYW01N3h4OiBmaXggbmV0d29ya2luZyBvbiBib2Fy
ZHMgd2l0aCBrc3o5MDMxIHBoeQogICAgICBBUk06IGR0czogYW00Mzd4OiBmaXggbmV0d29ya2lu
ZyBvbiBib2FyZHMgd2l0aCBrc3o5MDMxIHBoeQoKSGFtaXNoIE1hcnRpbiAoMSk6CiAgICAgIEFS
TTogZHRzOiBiY206IEhSMjogRml4IFBQSSBpbnRlcnJ1cHQgdHlwZXMKCkhzaW4tWWkgV2FuZyAo
MSk6CiAgICAgIGFybTY0OiBkdHM6IG10ODE3MzogZml4IHZjb2RlYy1lbmMgY2xvY2sKCkx1Ym9t
aXIgUmludGVsICgzKToKICAgICAgQVJNOiBkdHM6IG1tcDM6IFVzZSB0aGUgTU1QMyBjb21wYXRp
YmxlIHN0cmluZyBmb3IgL2Nsb2NrcwogICAgICBBUk06IGR0czogbW1wMy1kZWxsLWFyaWVsOiBG
aXggdGhlIFNQSSBkZXZpY2VzCiAgICAgIEFSTTogZHRzOiBtbXAzOiBEcm9wIHVzYi1ub3AteGNl
aXYgZnJvbSBIU0lDIHBoeQoKUm9iZXJ0IEJlY2tldHQgKDEpOgogICAgICBBUk06IGR0cy9pbXg2
cS1ieDUwdjM6IFNldCBkaXNwbGF5IGludGVyZmFjZSBjbG9jayBwYXJlbnRzCgpUb255IExpbmRn
cmVuICgxKToKICAgICAgQVJNOiBkdHM6IEZpeCB3cm9uZyBtZGlvIGNsb2NrIGZvciBkbTgxNHgK
ClZpbmNlbnQgU3RlaGzDqSAoMSk6CiAgICAgIEFSTTogZHRzOiBiY20yODM1LXJwaS16ZXJvLXc6
IEZpeCBsZWQgcG9sYXJpdHkKCiBhcmNoL2FybS9ib290L2R0cy9hbTQzN3gtZ3AtZXZtLmR0cyAg
ICAgICAgICAgICB8ICAyICstCiBhcmNoL2FybS9ib290L2R0cy9hbTQzN3gtaWRrLWV2bS5kdHMg
ICAgICAgICAgICB8ICAyICstCiBhcmNoL2FybS9ib290L2R0cy9hbTQzN3gtc2stZXZtLmR0cyAg
ICAgICAgICAgICB8ICA0ICsrLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2FtNTcxeC1pZGsuZHRzICAg
ICAgICAgICAgICAgIHwgIDQgKystLQogYXJjaC9hcm0vYm9vdC9kdHMvYW01N3h4LWJlYWdsZS14
MTUtY29tbW9uLmR0c2kgfCAgNCArKy0tCiBhcmNoL2FybS9ib290L2R0cy9hbTU3eHgtaWRrLWNv
bW1vbi5kdHNpICAgICAgICB8ICA0ICsrLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbS1ocjIuZHRz
aSAgICAgICAgICAgICAgICAgIHwgIDYgKysrLS0tCiBhcmNoL2FybS9ib290L2R0cy9iY20yODM1
LXJwaS16ZXJvLXcuZHRzICAgICAgICB8ICAyICstCiBhcmNoL2FybS9ib290L2R0cy9kbTgxNHgu
ZHRzaSAgICAgICAgICAgICAgICAgICB8ICAyICstCiBhcmNoL2FybS9ib290L2R0cy9pbXg2cS1i
NDUwdjMuZHRzICAgICAgICAgICAgICB8ICA3IC0tLS0tLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lt
eDZxLWI2NTB2My5kdHMgICAgICAgICAgICAgIHwgIDcgLS0tLS0tLQogYXJjaC9hcm0vYm9vdC9k
dHMvaW14NnEtYjg1MHYzLmR0cyAgICAgICAgICAgICAgfCAxMSAtLS0tLS0tLS0tLQogYXJjaC9h
cm0vYm9vdC9kdHMvaW14NnEtYng1MHYzLmR0c2kgICAgICAgICAgICAgfCAxNSArKysrKysrKysr
KysrKysKIGFyY2gvYXJtL2Jvb3QvZHRzL21tcDMtZGVsbC1hcmllbC5kdHMgICAgICAgICAgIHwg
MTIgKysrKysrLS0tLS0tCiBhcmNoL2FybS9ib290L2R0cy9tbXAzLmR0c2kgICAgICAgICAgICAg
ICAgICAgICB8ICA4ICsrKy0tLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE3
My5kdHNpICAgICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvc29jL21lZGlhdGVrL210ay1jbWRxLWhl
bHBlci5jICAgICAgICAgIHwgIDQgKysrLQogMTcgZmlsZXMgY2hhbmdlZCwgNDQgaW5zZXJ0aW9u
cygrKSwgNTQgZGVsZXRpb25zKC0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
