Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3F31EEC74
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 22:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gE0eA2YH7LCkkCMnEb9O3j1mDpUtGzlS1lcQjrQCkoQ=; b=FhstH5PLHLT8SjWKVr4bYh+qKK
	msNZu1D/0ndn2gcDCbvUp5O4oQWb85mX3p5q3bdXrY4Sy9nGB2YMcdEg7xlR0bVdHarAUdHsxg8tV
	DukXZbj8TJoHs8pBKNNS/zaRAL38QvnZHbhzYJSK6iwVTpfnMfP7OWy4O8i2pYC7QREbAZioJ4vXH
	8419snGqakVWqXmtiRPD67Z5qBR1oSa9j52lipssGwR6rWa1i+SFSy2iVb3WKCPB1TP2NFRynj7h1
	+9jux4TyLK5FgW6DT/NCb4PO7Q3nr+X02HyD8VuES+wkejaJcnFlUBFJckCj2JVJpdVvXhgTUBePI
	J5D1l+0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwrV-0002Hv-4R; Thu, 04 Jun 2020 20:53:17 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwrL-0002H7-VT
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 20:53:09 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MuDsZ-1iopfo3no5-00uaYt for <linux-arm-kernel@lists.infradead.org>; Thu,
 04 Jun 2020 22:53:06 +0200
Received: by mail-qk1-f179.google.com with SMTP id v79so7607358qkb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 13:53:05 -0700 (PDT)
X-Gm-Message-State: AOAM530zk3f0ZnhKee/SUEKJhtYwmshN2bKXD73fwH1W7vmdSQ+NvKDQ
 INgzOkZ6mRKhkReraX831dZrGEaBJ2tf8TpiazM=
X-Google-Smtp-Source: ABdhPJy9mySEfI214b3QlcUolR5aSGBJjDXuFIeTg8w9XbQTBnPWmFr4ZBlPmiKARgoHMDdZrjOglvnUHnm5EIRXWaA=
X-Received: by 2002:a37:9401:: with SMTP id w1mr6637118qkd.286.1591303984809; 
 Thu, 04 Jun 2020 13:53:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a1dmaiYR5Oxkc0CQcxTm=rAHSx6R+xtf4Wup29JqXNZsA@mail.gmail.com>
 <CAK8P3a00L4n3b=X+PQXe1pxf9CHryZTes9L1MD5i2+0RLXprfw@mail.gmail.com>
In-Reply-To: <CAK8P3a00L4n3b=X+PQXe1pxf9CHryZTes9L1MD5i2+0RLXprfw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 4 Jun 2020 22:52:48 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3w4euZfDQPt7wqWg9w4uf7SM4NLeA2CyOMmgNGPAdQaQ@mail.gmail.com>
Message-ID: <CAK8P3a3w4euZfDQPt7wqWg9w4uf7SM4NLeA2CyOMmgNGPAdQaQ@mail.gmail.com>
Subject: [GIT PULL 2/4]ARM: defconfig updates for v5.8
To: Linus Torvalds <torvalds@linux-foundation.org>, SoC Team <soc@kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Provags-ID: V03:K1:kZkE1hdNz6dnbFRM1lPvzSIf8trurrWiPgm+BBK2ey5w5MZ1gfP
 kA81yAJyEsUIuJA1s9EiJAAI7IlujjTQx0clwObhsUpkVkZGNJrkF5uolMoBmlNjZEUzZIx
 QqHzIzCaNPAoSpBgc7RUr0gcy1ROuT8GeDsJG0KoMPY+MM7QGMx6yPjwY15CFtfXhS25i5h
 Hm18HeJqAjT6p8Ewhnqow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VT6jQamBdqY=:U9h0SIHMlTEft4nvyhuKHY
 l5j/G/3ba6u0WUF2Qztn46jWb+4dgCcbFJbtP/9315fr0O/46Ga6aKg8ssYKHi0cRt4Oyg/br
 EHe5Gd6oWTP85s6OS3r93OItnQHFFwmh5IAS2yNwh3VJD7HScchgTsUeN00SWczDB1ynCW8ZA
 Q+HRoHIog9WzeJXRDCBfD7lvKANl8b/XmrA8iZiK7wSdm2/5ALRNGVYMb++TIPMCNEEaQXKsW
 ubsucqChsXvmGjKqy6aJlbLNjD2pMKvHKgyWLwZgXvwa2RbropyTDRKyZTqfosrOQT36tSe8j
 BjcoSMgemUgCfW+yG8GgMJr5GHaGClfiw0qOW4oQs8gQQvTUOyaI/OhEkW/xBpYzcFPS5DP+l
 q6berJusW9CJjXL33lgnHZ/eUBeXweYVkEXzt0rs/Xd0JZxUb5cGeNzr1jfceU8fK+VTX1VNh
 7gSjA0AKiqieRKkV6xwyUwO8qJi/Hp9EPX/v+Ry5PyvjCJ3jBaoS/dzbbBfvTxYjLHQNwZ1EH
 fCke2HK2SMdH2D8SBWmO4p4rxlyjZqa2RsjvjfetNQg1iqkS3Giam0fvuKqGH1KdkSBx/8hVe
 CoHAKUHEms++GNA0NgCRNG0NHoDwaUnwOkgi9+wSf1cf8RcDMeNz8T6vjAMV0A8T6Et9RlOjr
 CDeBoXFP16hyrACVJU6LTIJeokiQ6p/ZJr3sTwm1kk0uWNMj21B5GbUf7DnPlrNGN8PM1uaLg
 Nx00McmPnUl35vUgB5t0LFpEi5pHV/58Pt7BdedteLhmfIWuv1qU7BSiZ+lo2dqH6DNqIdfrV
 GFM8HYGoNKLYckvIFRLCe9WeFTUFJtbOeApjIOf674IfD678Dk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_135308_305138_E32A9702 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
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

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBiOWJiZTZlZDYzYjJiOWYyYzllZTVj
YmQwZjJjOTQ2YTI3MjNmNGNlOgoKICBMaW51eCA1LjctcmM2ICgyMDIwLTA1LTE3IDE2OjQ4OjM3
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zb2Mvc29jLmdpdAp0YWdz
L2FybS1kZWZjb25maWctNS44Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gZjExZDdj
YjQ3ZjE1N2I2YWY2MWNlYThlNGM1NzFjOGY4MWQ2NzBiNDoKCiAgTWVyZ2UgdGFnICdpbXgtZGVm
Y29uZmlnLTUuOCcgb2YKZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwv
Z2l0L3NoYXduZ3VvL2xpbnV4IGludG8KYXJtL2RlZmNvbmZpZyAoMjAyMC0wNS0yNiAwMDoxNzox
MiArMDIwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KQVJNOiBkZWZjb25maWcgdXBkYXRlcyBmb3IgdjUuOAoKVGhlc2Ug
YXJlIHRoZSB1c3VhbCB1cGRhdGVzIHRvIGFybS9hcm02NCBkZWZjb25maWcgZmlsZXMsCmVuYWJs
aW5nIG5ld2x5IGFkZGVkIGRyaXZlcnMgYW5kIGFkZHJlc3NpbmcgY2hhbmdlcyB0byBLY29uZmln
CmZpbGVzLgoKU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KQWxleCBFbGRlciAoMSk6CiAgICAgIGFybTY0OiBkZWZjb25maWc6IGVuYWJsZSBRdWFs
Y29tbSBJUEEgYW5kIFJNTmV0IG1vZHVsZXMKCkFuZHJlYXMgS2VtbmFkZSAoMSk6CiAgICAgIEFS
TTogaW14X3Y2X3Y3X2RlZmNvbmZpZzogZXh0ZW5kIFJONVQ2MTggUE1JQyBmYW1pbHkgc3VwcG9y
dAoKQW5zb24gSHVhbmcgKDEpOgogICAgICBhcm02NDogZGVmY29uZmlnOiBFbmFibGUgQ09ORklH
X1BJTkNUUkxfSU1YOERYTCBieSBkZWZhdWx0CgpBcm5kIEJlcmdtYW5uICgxMik6CiAgICAgIE1l
cmdlIHRhZyAndXg1MDAtZGVmY29uZmlnLXY1LjcnIG9mCmdpdDovL2dpdC5rZXJuZWwub3JnLy4u
Li9saW51c3cvbGludXgtc3Rlcmljc3NvbiBpbnRvIGFybS9kZWZjb25maWcKICAgICAgTWVyZ2Ug
dGFnICdyZW5lc2FzLWFybS1kZWZjb25maWctZm9yLXY1LjgtdGFnMScgb2YKZ2l0Oi8vZ2l0Lmtl
cm5lbC5vcmcvLi4uL2dlZXJ0L3JlbmVzYXMtZGV2ZWwgaW50byBhcm0vZGVmY29uZmlnCiAgICAg
IE1lcmdlIHRhZyAnYXJtLXNvYy9mb3ItNS44L2RlZmNvbmZpZycgb2YKaHR0cHM6Ly9naXRodWIu
Y29tL0Jyb2FkY29tL3N0YmxpbnV4IGludG8gYXJtL2RlZmNvbmZpZwogICAgICBNZXJnZSB0YWcg
J3NhbXN1bmctZGVmY29uZmlnLTUuOCcgb2YKZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvLi4uL2tyemsv
bGludXggaW50byBhcm0vZGVmY29uZmlnCiAgICAgIE1lcmdlIHRhZyAncmVuZXNhcy1hcm0tZGVm
Y29uZmlnLWZvci12NS44LXRhZzInIG9mCmdpdDovL2dpdC5rZXJuZWwub3JnLy4uLi9nZWVydC9y
ZW5lc2FzLWRldmVsIGludG8gYXJtL2RlZmNvbmZpZwogICAgICBNZXJnZSB0YWcgJ3N1bnhpLWNv
bmZpZy1mb3ItNS44LTEnIG9mCmdpdDovL2dpdC5rZXJuZWwub3JnLy4uLi9zdW54aS9saW51eCBp
bnRvIGFybS9kZWZjb25maWcKICAgICAgTWVyZ2UgdGFnICdhdDkxLTUuOC1kZWZjb25maWcnIG9m
CmdpdDovL2dpdC5rZXJuZWwub3JnLy4uLi9hdDkxL2xpbnV4IGludG8gYXJtL2RlZmNvbmZpZwog
ICAgICBNZXJnZSB0YWcgJ3Fjb20tYXJtNjQtZGVmY29uZmlnLWZvci01LjgnIG9mCmdpdDovL2dp
dC5rZXJuZWwub3JnLy4uLi9xY29tL2xpbnV4IGludG8gYXJtL2RlZmNvbmZpZwogICAgICBNZXJn
ZSB0YWcgJ2FtbG9naWMtZGVmY29uZmlnJyBvZgpnaXQ6Ly9naXQua2VybmVsLm9yZy8uLi4va2hp
bG1hbi9saW51eC1hbWxvZ2ljIGludG8gYXJtL2RlZmNvbmZpZwogICAgICBNZXJnZSB0YWcgJ2hp
c2ktYXJtNjQtZGVmY29uZmlnLWZvci01LjgnIG9mCmdpdDovL2dpdGh1Yi5jb20vaGlzaWxpY29u
L2xpbnV4LWhpc2kgaW50byBhcm0vZGVmY29uZmlnCiAgICAgIE1lcmdlIHRhZyAnYXJtNjRfZGVm
Y29uZmlnX2Zvcl92NS44JyBvZgpnaXQ6Ly9naXQua2VybmVsLm9yZy8uLi4vZGluZ3V5ZW4vbGlu
dXggaW50byBhcm0vZGVmY29uZmlnCiAgICAgIE1lcmdlIHRhZyAnaW14LWRlZmNvbmZpZy01Ljgn
IG9mCmdpdDovL2dpdC5rZXJuZWwub3JnLy4uLi9zaGF3bmd1by9saW51eCBpbnRvIGFybS9kZWZj
b25maWcKCkJqb3JuIEFuZGVyc3NvbiAoMik6CiAgICAgIGFybTY0OiBkZWZjb25maWc6IFJlbW92
ZSBRQ09NX0dMSU5LX1NTUgogICAgICBhcm02NDogZGVmY29uZmlnOiBFbmFibGUgUXVhbGNvbW0g
U0M3MTgwIHBpbmN0cmwgYW5kIGdjYwoKQ2zDqW1lbnQgUMOpcm9uICgxKToKICAgICAgYXJtNjQ6
IGNvbmZpZ3M6IEVuYWJsZSBzdW41MGkgY3B1ZnJlcSBudm1lbQoKQ29yZW50aW4gTGFiYmUgKDEp
OgogICAgICBBUk06IGNvbmZpZ3M6IHN1bnhpOiBBZGQgc3VuOGkgYW5hbG9nIGNvZGVjCgpEaW5o
IE5ndXllbiAoMSk6CiAgICAgIGFybTY0OiBkZWZjb25maWc6IEFkZCBMRURTX1RSSUdHRVJfVElN
RVIKCkZsb3JpYW4gRmFpbmVsbGkgKDEpOgogICAgICBNZXJnZSB0YWcgJ3RhZ3MvYmNtMjgzNS1k
ZWZjb25maWctbmV4dC0yMDIwLTAzLTI3JyBpbnRvIGRlZmNvbmZpZy9uZXh0CgpHZWVydCBVeXR0
ZXJob2V2ZW4gKDEpOgogICAgICBBUk06IHNobW9iaWxlOiBkZWZjb25maWc6IFJlZnJlc2ggZm9y
IHY1LjctcmMxCgpKZXJvbWUgQnJ1bmV0ICgxKToKICAgICAgYXJtNjQ6IGRlZmNvbmZpZzogZW5h
YmxlIG1lc29uIGd4IGF1ZGlvIGFzIG1vZHVsZQoKTGFkIFByYWJoYWthciAoMik6CiAgICAgIEFS
TTogc2htb2JpbGU6IGRlZmNvbmZpZzogRW5hYmxlIHI4YTc3NDIgU29DCiAgICAgIEFSTTogbXVs
dGlfdjdfZGVmY29uZmlnOiBFbmFibGUgcjhhNzc0MiBTb0MKCkxpbnVzIFdhbGxlaWogKDEpOgog
ICAgICBBUk06IGRlZmNvbmZpZzogdTg1MDA6IEVuYWJsZSBuZXcgZHJpdmVycyBmb3IgdXg1MDAK
Ck1hcmVrIFN6eXByb3dza2kgKDIpOgogICAgICBBUk06IGV4eW5vc19kZWZjb25maWc6IEVuYWJs
ZSBzZXJpYWwgYnVzIGFuZCBCQ00gSENJVUFSVCBkcml2ZXJzCiAgICAgIEFSTTogZXh5bm9zX2Rl
ZmNvbmZpZzogQ29tcGlsZSBNQUM4MDIxMS9DRkc4MDIxMSBhcyBtb2R1bGVzCgpOaWNvbGFzIFNh
ZW56IEp1bGllbm5lICgxKToKICAgICAgQVJNOiBiY20yODM1X2RlZmNvbmZpZzogRW5hYmxlIGZp
eGVkLXJlZ3VsYXRvcgoKUmF6dmFuIFN0ZWZhbmVzY3UgKDIpOgogICAgICBBUk06IGNvbmZpZ3M6
IGF0OTE6IHNhbWE1OiBlbmFibGUgU0FNQTVEMl9QSU9CVQogICAgICBBUk06IGNvbmZpZ3M6IGF0
OTE6IHNhbWE1OiBlbmFibGUgTUNQMTY1MDIgcmVndWxhdG9yCgpSb2JlcnQgRm9zcyAoMSk6CiAg
ICAgIGFybTY0OiBkZWZjb25maWc6IEVuYWJsZSBRdWFsY29tbSBDQU1DQywgQ0FNU1MgYW5kIEND
SSBkcml2ZXJzCgpTdGVwaGFuIEdlcmhvbGQgKDEpOgogICAgICBBUk06IGRlZmNvbmZpZzogdTg1
MDA6IEVuYWJsZSBuZXcgZHJpdmVycyBmb3Igc2Ftc3VuZy1nb2xkZW4KClZpbm9kIEtvdWwgKDEp
OgogICAgICBhcm02NDogZGVmY29uZmlnOiBFbmFibGUgU004MjUwIEdDQyBkcml2ZXIKClpob3Ug
V2FuZyAoMSk6CiAgICAgIGFybTY0OiBkZWZjb25maWc6IEVuYWJsZSBVQUNDRS9QQ0kgUEFTSUQv
U0VDMi9IUFJFIGNvbmZpZ3MKCiBhcmNoL2FybS9jb25maWdzL2JjbTI4MzVfZGVmY29uZmlnICAg
fCAgMSArCiBhcmNoL2FybS9jb25maWdzL2V4eW5vc19kZWZjb25maWcgICAgfCAgOCArKysrKy0t
LQogYXJjaC9hcm0vY29uZmlncy9pbXhfdjZfdjdfZGVmY29uZmlnIHwgIDIgKysKIGFyY2gvYXJt
L2NvbmZpZ3MvbXVsdGlfdjdfZGVmY29uZmlnICB8ICAxICsKIGFyY2gvYXJtL2NvbmZpZ3Mvc2Ft
YTVfZGVmY29uZmlnICAgICB8ICAyICsrCiBhcmNoL2FybS9jb25maWdzL3NobW9iaWxlX2RlZmNv
bmZpZyAgfCAgMiArKwogYXJjaC9hcm0vY29uZmlncy9zdW54aV9kZWZjb25maWcgICAgIHwgIDEg
KwogYXJjaC9hcm0vY29uZmlncy91ODUwMF9kZWZjb25maWcgICAgIHwgMTQgKysrKysrKysrKysr
KysKIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgICAgICAgICB8IDE4ICsrKysrKysrKysr
KysrKysrLQogOSBmaWxlcyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
