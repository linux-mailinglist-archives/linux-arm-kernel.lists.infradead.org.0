Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA7D1EEC46
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 22:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Me+m/rTKASh+TTA2JO89jPMhriNsd2t9CpDyHUA+pnM=; b=se8
	X2SG1iN2fiF99WelIMgJsCMngVP9o1aWWLwvTKK6O7SKzlsxjeQCe55Qzc8sBfD9etDE59Tm7U3xN
	xR2uocmI8JfGoumvlzDYCeB0BJppr6TfmRRACX6RNbY6M2G4W8Q0tGPhj138UZAtPivnn1G9OcJ7x
	DVK0T2IdsGTKAn10mRf/ZdbIyCBxrLhrlNzAWtQElgChfSRt8ldSxZUZ5Kn+7m4cd96xsvBXbvGo3
	1LKSESFUmfxyTIM/zSH7+jU32goNrdVmFliBt9hCzUZOPrO4T3aWoz2ngpBeDzQJ4eaYq0lixs7Ty
	OK8gzNcFAIQhhaZ/MgjCVZfphrlHNXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwke-0005h1-6i; Thu, 04 Jun 2020 20:46:12 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwkV-0005gE-5V
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 20:46:06 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M6URj-1ja2rn3Zm5-006y7s for <linux-arm-kernel@lists.infradead.org>; Thu,
 04 Jun 2020 22:45:59 +0200
Received: by mail-qk1-f179.google.com with SMTP id c185so7603333qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 13:45:58 -0700 (PDT)
X-Gm-Message-State: AOAM530Ixw8gvuQhnD5KBseGo7/WtQ2EmpGhU5BsRlAPYxY8hVwLO6iN
 EA21bw5jfUEpaRPd76L6ikJOjh1Ski5Ovvf6INQ=
X-Google-Smtp-Source: ABdhPJwXrpsH1XQ1mbch3JTIADbzQkHUa0jcasKEzjYWDTVYa/T04J6Her42Ynj0K0YbvgvP8cqAz+IVTyB8jyeYNyY=
X-Received: by 2002:a37:554:: with SMTP id 81mr6714160qkf.394.1591303557700;
 Thu, 04 Jun 2020 13:45:57 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 4 Jun 2020 22:45:41 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1dmaiYR5Oxkc0CQcxTm=rAHSx6R+xtf4Wup29JqXNZsA@mail.gmail.com>
Message-ID: <CAK8P3a1dmaiYR5Oxkc0CQcxTm=rAHSx6R+xtf4Wup29JqXNZsA@mail.gmail.com>
Subject: [GIT PULL 0/4] ARM: SoC branches for v5.8
To: Linus Torvalds <torvalds@linux-foundation.org>, SoC Team <soc@kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
 Marek Vasut <marex@denx.de>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Anson Huang <anson.huang@nxp.com>, Doug Anderson <dianders@chromium.org>
X-Provags-ID: V03:K1:gsasyI+Mok7OkZQHE1E14gNVc54Da6AtVHQfjB8t4kAuSOH4wDQ
 ZnASGmswqoQV3aAiO9j+77BQJ1Bf/lemNeJoG5nuz75vwCWZcxEB2B87i0sDuXj7XCin/+U
 ea78Fpv5xBm6nB2cHM2tc2yAzMR2lgdvNcDaMXbt9s/8e/QH5TRNMNP1zp18Lybm5b0zIWg
 lNKoS4YVacDyRuc6qVEqQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:76iYbxQMZUQ=:T6IfrCLnDNJ8iMQQghH6pm
 ECG7UGW1j3lOOd/GzxLUoB1gcADub3WPhBp64h5FBHntKbQhT7aZXPKera8RX9/JCzo2Y55Vh
 z0I+xYKfCITUGdHvWidaNASXUjkYgT9tdCwGOKijs5ow0Ns7UaGi+NUSaml1DMzrT6hEMH9ho
 SUwIM2CQI1iGWaswH+zR0/Tu+1Z6IonWhdhhRm1VmqwpmOQt/UmS76Ewa4Pvvxf9C2bn1RYST
 j7yPky3nX2HuVWYmSJi9gzEUK5Z7t9emIczXxUqJ6c33I56xldZQE4KYC6B59gB39p1D/kYlX
 j3TdszY3rul806i2ckPH4sKhiucCQ2qV1G1iSNnYi3Jg+FVqPcN1f66ZtnjBKRP/2OTVQQ5t/
 yAeCxcp9uV0mtkIOq2QvOOoehPBLeJyL9I5/GwLsj/8v7xDWohghYr+Jd/+ZBID9J3pbKIuOF
 DF2pbU37+CRpGeXqoMtzoilGwwpLhWDrGKloYD6xTSi8cji82aGDElAn2/F/vZU97LEfeNGqr
 YPRr5cFhJSai2Tq3CMYTWwZb4gJCnWv8rH8EMZ3tYaB/WnUeC9f5v40HRgGveRsKqptaRXxaZ
 z9mCrVAHUarOEzMzpigVnBRL4nRv0Y9Je0BEP9eLns9mIRI7Yq+g8oA45vvW2tEosf0H0Qqjh
 oUU4Y3bsLeg1oYSkcPVIYHh5IAbN5PgAgIpdo3O9l7KTORotrUSus5ZMohGS1PewywT0xMvPp
 EtcAj2N7dzXeELenwPmPNk+I2FhRFAMYFU6HXqS8NC/CqCGZuA2XYPscyRB1sCV7ZrmQAH2V5
 gNwe3WN6xtYFUSJHCRve6jcesc+qh5SN8UhUUdDgXNC/yFliZM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_134603_498014_4209A8B9 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGludXMsCgpIZXJlIGFyZSB0aGUgdXN1YWwgYnJhbmNoZXMgZm9yIGFybS1zb2M6IGZpdmUg
bmV3IFNvQyB2YXJpYW50cywgMjUKbWFjaGluZXMgYWRkZWQsIHR3byBtYWNoaW5lcyByZW1vdmVk
LCBhIGZldyBuZXcgZHJpdmVycyBhbmQgdGhlCnVzdWFsIGFtb3VudCBvZiBvZiBjbGVhbnVwcyBh
bmQgcmV3b3JrLgoKVGhlcmUgYXJlIDgzNSBwYXRjaGVzIGZyb20gMTk2IGNvbnRyaWJ1dG9ycyBp
biB0b3RhbCwgd2l0aCBvbmx5CnRoZXNlIGNvbnRyaWJ1dGluZyBtb3JlIHRoYW4gdGVuIHBhdGNo
ZXM6CgogICAgIDM2IE1hcmVrIFZhc3V0CiAgICAgMzUgQW5kcmVhcyBGw6RyYmVyCiAgICAgMjcg
R2VlcnQgVXl0dGVyaG9ldmVuCiAgICAgMjMgUm9iIEhlcnJpbmcKICAgICAyMiBBbnNvbiBIdWFu
ZwogICAgIDIxIERvdWdsYXMgQW5kZXJzb24KICAgICAyMCBUdWRvciBBbWJhcnVzCiAgICAgMjAg
TGFkIFByYWJoYWthcgogICAgIDE5IEpvaGFuIEpvbmtlcgogICAgIDE3IEpvbmF0aGFuIEJha2tl
cgogICAgIDE3IEFuZHJlIFByenl3YXJhCiAgICAgMTYgU3VtYW4gQW5uYQogICAgIDE1IEplcm9t
ZSBCcnVuZXQKICAgICAxNCBTZXJnZSBTZW1pbgogICAgIDE0IEJqb3JuIEFuZGVyc3NvbgogICAg
IDEzIFRvbnkgTGluZGdyZW4KICAgICAxMiBMdWJvbWlyIFJpbnRlbAogICAgIDEyIERtaXRyeSBP
c2lwZW5rbwogICAgIDExIFN1ZGVlcCBIb2xsYQogICAgIDExIE1hcmVrIFN6eXByb3dza2kKClRo
ZSBkaXJzdGF0IHNob3dzIHRoYXQgYXMgdXN1YWwgbW9zdCBjaGFuZ2VzIGFyZSBmb3IgZGV2aWNl
CnRyZWUgZmlsZXMsIHRoaXMgdGltZSBzbGlnaHRseSBtb3JlIDMyLWJpdCB0aGFuIDY0LWJpdCBi
b3RoIGluIG51bWJlcgphbmQgc2l6ZSBvZiB0aGUgY2hhbmdlcywgd2hpbGUgNjAlIG9mIHRoZSBu
ZXdseSBhZGRlZCBtYWNoaW5lcwphcmUgNjQtYml0LgoKICAgMC4zJSBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvYXJtLwogICAwLjYlIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9idXMvCiAgIDAuMiUgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rp
c3BsYXkvdGVncmEvCiAgIDAuMyUgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21l
bW9yeS1jb250cm9sbGVycy8KICAgMC41JSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvCiAgMzEuOSUgYXJjaC9hcm0vYm9vdC9kdHMvCiAgIDAuNyUgYXJjaC9hcm0vY29uZmlncy8K
ICAgMC41JSBhcmNoL2FybS9tYWNoLWlteC8KICAgMS4yJSBhcmNoL2FybS9tYWNoLWludGVncmF0
b3IvCiAgIDMuMiUgYXJjaC9hcm0vbWFjaC1vbWFwMi8KICAgNS40JSBhcmNoL2FybS9tYWNoLXB4
YS8KICAgMC41JSBhcmNoL2FybS8KICAgMC42JSBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci8KICAgNC4wJSBhcmNoL2FybTY0L2Jvb3QvZHRzL2FtbG9naWMvCiAgIDEuNSUgYXJjaC9hcm02
NC9ib290L2R0cy9hcm0vCiAgIDIuNCUgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvCiAg
IDAuMiUgYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vCiAgIDUuMiUgYXJjaC9hcm02NC9i
b290L2R0cy9tZWRpYXRlay8KICAgMC40JSBhcmNoL2FybTY0L2Jvb3QvZHRzL252aWRpYS8KICAg
Ny42JSBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vCiAgIDEuNyUgYXJjaC9hcm02NC9ib290L2R0
cy9yZWFsdGVrLwogICAyLjAlIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy8KICAgMS40JSBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwLwogICAwLjMlIGFyY2gvYXJtNjQvYm9vdC9kdHMv
c29jaW9uZXh0LwogICAwLjQlIGFyY2gvYXJtNjQvYm9vdC9kdHMvc3ByZC8KICAgMC41JSBhcmNo
L2FybTY0L2Jvb3QvZHRzL3RpLwogICAyLjglIGRyaXZlcnMvYnVzLwogICAwLjklIGRyaXZlcnMv
Y2xrL21lZGlhdGVrLwogICAwLjQlIGRyaXZlcnMvY2xrL3ZlcnNhdGlsZS8KICAgMC42JSBkcml2
ZXJzL2NwdWZyZXEvCiAgIDAuNyUgZHJpdmVycy9maXJtd2FyZS9hcm1fc2NtaS8KICAgMC4yJSBk
cml2ZXJzL2Zpcm13YXJlLwogICAxLjElIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay8KICAgMC42
JSBkcml2ZXJzL21lbW9yeS8KICAgMC4yJSBkcml2ZXJzL21mZC8KICAgMC42JSBkcml2ZXJzL21p
c2MvCiAgIDAuNCUgZHJpdmVycy9yZXNldC8KICAgMC4zJSBkcml2ZXJzL3NvYy9hbWxvZ2ljLwog
ICAwLjMlIGRyaXZlcnMvc29jL2lteC8KICAgMS4xJSBkcml2ZXJzL3NvYy9tZWRpYXRlay8KICAg
My4wJSBkcml2ZXJzL3NvYy9xY29tLwogICAwLjIlIGRyaXZlcnMvc29jL3RlZ3JhL2Z1c2UvCiAg
IDAuMyUgZHJpdmVycy9zb2MvdGkvCiAgIDAuMiUgZHJpdmVycy9zb2MvCiAgIDcuOCUgZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZpZGVvLwogICAwLjQlIGRyaXZlcnMvdGVlLwogICAwLjIl
IGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svCiAgIDAuMiUgaW5jbHVkZS9kdC1iaW5kaW5ncy9m
aXJtd2FyZS9pbXgvCiAgIDAuNiUgaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC8KICAgMC4zJSBp
bmNsdWRlL2xpbnV4LwogICAwLjMlIGluY2x1ZGUvCgpUaGUgbGFyZ2VzdCBvdXRsaWVyIGFyZSBh
IGZldyBhZGRlZCBkcml2ZXJzIGZvciB0aGUgVGVncmEgcGxhdGZvcm0KYW5kIG9uIE1JUFMgU29D
IChCYWlrYWwtVDEpLCBmb3Igd2hpY2ggSSBoZWxwZWQgZ2V0IHNvbWUgZHJpdmVycwpyZXZpZXdl
ZCBhbmQgbWVyZ2VkLiBUaGUgY2hhbmdlcyBmb3Igb21hcDIgYW5kIHB4YSBhcmUKY2xlYW51cHMg
bW92aW5nIGNvZGUgb3V0IG9mIHRoZSBwbGF0Zm9ybSBkaXJlY3RvcnkuCgpBcyBvZiB0aGlzIG1v
cm5pbmcsIHRoZXJlIHdlcmUgbm8gbWVyZ2UgY29uZmxpY3RzIGFnYWluc3QgeW91ciB0cmVlLgoK
ICAgICBBcm5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
