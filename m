Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C86B3F13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWsaun7yelsLOThK2UbGJfRlcs+zsK0/c7omGRgMeAU=; b=j7btcqowu8DjgL
	1nP7EX1IZ+mBoL6JYOqyvkIJOZKVrqSphZLagZcQgv/Kgu7+ipV2aa9aAMVfeEYpt3a4DFcx6vcik
	oypzPquoEuYZ73EBcE1oOIIcvgHNHFKNacvbrkjj9acgrlTZdS721C1ps9SPOFR4A8FZDjduBbz4R
	JcwXymAOqkF+kPUtzYCDdFQrCd5GyrV0IxBIy+cIkL0sFHHqOjj+qViFR1LiDh0a8IMAs28hagzwd
	qqjvT9AmKjEcb5hzOmUT8Ei12vw6DkapCF1cT138okrwXZmUDvZEO+ZBQzcqptc/J3uEYoknQT7ZE
	bmKC/39Nxbp0CHob/sLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tyz-0006nf-NZ; Mon, 16 Sep 2019 16:36:10 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tyl-0006nM-QF
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:36:00 +0000
Received: by mail-qk1-f195.google.com with SMTP id y144so608087qkb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 09:35:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+7/cbsttu5e3HkU5pvu9Ipw3mIXOhqJT27Lwt/77xoI=;
 b=ZBlaHQOlKR6GihgvRiNSvWu99Dr9XdFSOmek+Bw0TRwkI9AG/pzu5vBTStZVtPkd5n
 NVq0yncV0us7qXm5kO8vNGR8XFxqjDRZ82Xqma9udMNo1vD9ZFGhF4W7di5Sb8EyfvVW
 SvDXVy5pN255QNOAFCgH6xI0dxzv/ddfcbwEdPaZ6dg2+i1H/Z/Kz/Kgkc0o8zANeecw
 r1jEy6/6EZr0aTKTbb7MVl1SerCrJJ6BN21jLShRVuwd3XSAcGakuCk9IMp/YJSJNWOK
 Xj/6ltoIEn8jijar3Rc/GjjuN0HGhTgSU9etHoVnTCeGbKgG7RBnKjFLeI/uWpjIvGdl
 /Szw==
X-Gm-Message-State: APjAAAVZPw+qWl2Rv9Da3MFu7ZoB54JEA75faNbp242F7sWhIA4XczVc
 23girzbYFLknW4uHrJq01TDRcIA+ZrlbP3W71hU=
X-Google-Smtp-Source: APXvYqyQ8G7S6SGsZluUFDTtORrdW9CDNHNfU7QX1Ibq696/8E74Kes5w8dekCRCcDnQHTd2pn0xm757FVXH78/K4bk=
X-Received: by 2002:ae9:f503:: with SMTP id o3mr868321qkg.3.1568651754254;
 Mon, 16 Sep 2019 09:35:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3ArYx8LUbYhjTw2wOEZgK9mJOE_PaLzuZTfn29Z5+K3Q@mail.gmail.com>
In-Reply-To: <CAK8P3a3ArYx8LUbYhjTw2wOEZgK9mJOE_PaLzuZTfn29Z5+K3Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Sep 2019 18:35:38 +0200
Message-ID: <CAK8P3a2NL=YXK1jWTk783sqMrNV80QkEae=kHk8-KeX2D0s74A@mail.gmail.com>
Subject: Re: [GIT PULL 0/5] ARM SoC updates for v5.4, part 1
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_093555_853919_88DD2FE3 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: SoC Team <soc@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBkNDUzMzFiMDBkZGIxNzllMjkxNzY2
NjE3MjU5MjYxYzExMmRiODcyOgoKICBMaW51eCA1LjMtcmM0ICgyMDE5LTA4LTExIDEzOjI2OjQx
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zb2Mvc29jLmdpdAp0YWdz
L2FybXNvYy1kZWZjb25maWcKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byBhZGNlMTc2
Nzc5OWI2ZjZjZjE4YzEzZTc0Njk1MGZjOTc2ZjJlMTVlOgoKICBNZXJnZSB0YWcgJ3NhbXN1bmct
ZGVmY29uZmlnLTUuNCcgb2YKZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L2tyemsvbGludXggaW50bwphcm0vZGVmY29uZmlnICgyMDE5LTA5LTA0IDIyOjMxOjI0
ICswMjAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQpBUk06IFNvQyBkZWZjb25maWcgdXBkYXRlcyBmb3IgdjUuNAoKQXMg
dXN1YWwsIGEgYnVuY2ggb2YgY29tbWl0cywgbW9zdGx5IGFkZGluZyBkcml2ZXJzIGFuZCBvdGhl
cgpvcHRpb25zIHRvIGRlZmNvbmZpZ3MgYWZ0ZXIgdGhlIGNvZGUgd2FzIG1lcmdlZCB0aHJvdWdo
IGFub3RoZXIKdHJlZS4KClNpZ25lZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIu
ZGU+CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCkFuZHkgR3Jvc3MgKDEpOgogICAgICBBUk06IG11bHRpX3Y3X2RlZmNvbmZp
ZzogQWRkIERSTV9NU00gdG8gZGVmY29uZmlncyB3aXRoIEFSQ0hfUUNPTQoKQW5zb24gSHVhbmcg
KDIpOgogICAgICBhcm02NDogZGVmY29uZmlnOiBTZWxlY3QgQ09ORklHX1BJTkNUUkxfSU1YOE1O
IGJ5IGRlZmF1bHQKICAgICAgYXJtNjQ6IGRlZmNvbmZpZzogU2VsZWN0IENPTkZJR19DTEtfSU1Y
OE1OIGJ5IGRlZmF1bHQKCkFybmQgQmVyZ21hbm4gKDEzKToKICAgICAgTWVyZ2UgdGFnICdzdG0z
Mi1kZWZjb25maWctZm9yLXY1LjQtMScgb2YKZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvLi4uL2F0b3Jn
dWUvc3RtMzIgaW50byBhcm0vZGVmY29uZmlnCiAgICAgIE1lcmdlIHRhZyAnaGlzaS1hcm02NC1k
ZWZjb25maWctZm9yLTUuNCcgb2YKZ2l0Oi8vZ2l0aHViLmNvbS9oaXNpbGljb24vbGludXgtaGlz
aSBpbnRvIGFybS9kZWZjb25maWcKICAgICAgTWVyZ2UgdGFnICdhcm02NF9kZWZjb25maWdfd2F0
Y2hkb2dfZm9yX3Y1LjQnIG9mCmdpdDovL2dpdC5rZXJuZWwub3JnLy4uLi9kaW5ndXllbi9saW51
eCBpbnRvIGFybS9kZWZjb25maWcKICAgICAgTWVyZ2UgdGFnICdzdW54aS1jb25maWc2NC1mb3It
NS40LTEnIG9mCmdpdDovL2dpdC5rZXJuZWwub3JnLy4uLi9zdW54aS9saW51eCBpbnRvIGFybS9k
ZWZjb25maWcKICAgICAgTWVyZ2UgdGFnICdhc3BlZWQtNS40LWRlZmNvbmZpZycgb2YKZ2l0Oi8v
Z2l0Lmtlcm5lbC5vcmcvLi4uL2pvZWwvYXNwZWVkIGludG8gYXJtL2RlZmNvbmZpZwogICAgICBN
ZXJnZSB0YWcgJ2lteC1kZWZjb25maWctNS40JyBvZgpnaXQ6Ly9naXQua2VybmVsLm9yZy8uLi4v
c2hhd25ndW8vbGludXggaW50byBhcm0vZGVmY29uZmlnCiAgICAgIE1lcmdlIHRhZyAnYXJtLXNv
Yy9mb3ItNS40L2RlZmNvbmZpZycgb2YKaHR0cHM6Ly9naXRodWIuY29tL0Jyb2FkY29tL3N0Ymxp
bnV4IGludG8gYXJtL2RlZmNvbmZpZwogICAgICBNZXJnZSB0YWcgJ2FybS1zb2MvZm9yLTUuNC9k
ZWZjb25maWctYXJtNjQnIG9mCmh0dHBzOi8vZ2l0aHViLmNvbS9Ccm9hZGNvbS9zdGJsaW51eCBp
bnRvIGFybS9kZWZjb25maWcKICAgICAgTWVyZ2UgdGFnICdxY29tLWFybTY0LWRlZmNvbmZpZy1m
b3ItNS40JyBvZgpnaXQ6Ly9naXQua2VybmVsLm9yZy8uLi4vcWNvbS9saW51eCBpbnRvIGFybS9k
ZWZjb25maWcKICAgICAgTWVyZ2UgdGFnICdxY29tLWRlZmNvbmZpZy1mb3ItNS40JyBvZgpnaXQ6
Ly9naXQua2VybmVsLm9yZy8uLi4vcWNvbS9saW51eCBpbnRvIGFybS9kZWZjb25maWcKICAgICAg
TWVyZ2UgdGFnICdxY29tLWRyaXZlcnMtZm9yLTUuNCcgb2YKZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcv
Li4uL3Fjb20vbGludXggaW50byBhcm0vZGVmY29uZmlnCiAgICAgIE1lcmdlIHRhZyAnc2Ftc3Vu
Zy1kZWZjb25maWctNS40JyBvZgpnaXQ6Ly9naXQua2VybmVsLm9yZy8uLi4va3J6ay9saW51eCBp
bnRvIGFybS9kZWZjb25maWcKICAgICAgTWVyZ2UgdGFnICdhcm1zb2MtZGVmY29uZmlnJyBvZiBn
aXQ6Ly9naXQua2VybmVsLm9yZy8uLi4vc29jL3NvYwppbnRvIGZvci1uZXh0CgpDaHJpc3RpYW4g
R21laW5lciAoMSk6CiAgICAgIGFybTY0OiBkZWZjb25maWc6IENPTkZJR19EUk1fRVROQVZJVj1t
CgpDaHJpc3RvcGhlIEtlcmVsbG8gKDEpOgogICAgICBBUk06IG11bHRpX3Y3X2RlZmNvbmZpZzog
YWRkIEZNQzIgTkFORCBjb250cm9sbGVyIHN1cHBvcnQKCkNsw6ltZW50IFDDqXJvbiAoMik6CiAg
ICAgIGFybTY0OiBkZWZjb25maWc6IEVuYWJsZSBJUiBTVU5YSSBvcHRpb24KICAgICAgYXJtNjQ6
IGRlZmNvbmZpZzogRW5hYmxlIFN1bjRpIFNQRElGIG1vZHVsZQoKRGluaCBOZ3V5ZW4gKDEpOgog
ICAgICBhcm02NDogZGVmY29uZmlnOiBFbmFibGUgdGhlIERlc2lnbldhcmUgd2F0Y2hkb2cKCkZh
YmlvIEVzdGV2YW0gKDEpOgogICAgICBBUk06IGlteF92Nl92N19kZWZjb25maWc6IFNlbGVjdCB0
aGUgT1Y1NjQ1IGNhbWVyYSBkcml2ZXIKCkZhYnJpY2UgR2FzbmllciAoMSk6CiAgICAgIEFSTTog
bXVsdGlfdjdfZGVmY29uZmlnOiBlbmFibGUgU1RNMzIgYm9vc3RlciByZWd1bGF0b3IKCkZsb3Jp
YW4gRmFpbmVsbGkgKDIpOgogICAgICBNZXJnZSB0YWcgJ3RhZ3MvYmNtMjgzNS1kZWZjb25maWct
bmV4dC0yMDE5LTA4LTE1JyBpbnRvIGRlZmNvbmZpZy9uZXh0CiAgICAgIE1lcmdlIHRhZyAndGFn
cy9iY20yODM1LWRlZmNvbmZpZy02NC1uZXh0LTIwMTktMDgtMTUnIGludG8KZGVmY29uZmlnLWFy
bTY0L25leHQKCkpvZWwgU3RhbmxleSAoMyk6CiAgICAgIEFSTTogY29uZmlnczogYXNwZWVkOiBS
ZWZyZXNoIGRlZmNvbmZpZ3MKICAgICAgQVJNOiBjb25maWdzOiBtdWx0aV92NzogQWRkIEFTUEVF
RCBHNgogICAgICBBUk06IGNvbmZpZ3M6IGFzcGVlZF9nNTogRW5hYmxlIEFTVDI2MDAKCkpvcmRh
biBDcm91c2UgKDIpOgogICAgICBBUk06IHFjb21fZGVmY29uZmlnOiBBZGQgRFJNX01TTSB0byBk
ZWZjb25maWdzIHdpdGggQVJDSF9RQ09NCiAgICAgIGFybTY0OiBkZWZjb25maWc6IEFkZCBEUk1f
TVNNIHRvIGRlZmNvbmZpZ3Mgd2l0aCBBUkNIX1FDT00KCkxlZSBKb25lcyAoMyk6CiAgICAgIGFy
bTY0OiBkZWZjb25maWc6IEVuYWJsZSBRdWFsY29tbSBHRU5JIGJhc2VkIEkyQyBjb250cm9sbGVy
CiAgICAgIGFybTY0OiBkZWZjb25maWc6IEVuYWJsZSB0aGUgRUZJIEZyYW1lYnVmZmVyCiAgICAg
IGFybTY0OiBkZWZjb25maWc6IEVuYWJsZSBRdWFsY29tbSBRVVNCMiBQSFkKCkxlb25hcmQgQ3Jl
c3RleiAoMSk6CiAgICAgIGFybTY0OiBkZWZjb25maWc6IEJ1aWxkIGlteDggZGRyIHBtdSBhcyBt
b2R1bGUKCkxvcmVuem8gUGllcmFsaXNpICgyKToKICAgICAgYXJtNjQ6IGRlZmNvbmZpZzogRW5h
YmxlIHRoZSBQU0NJIENQVWlkbGUgZHJpdmVyCiAgICAgIEFSTTogaW14X3Y2X3Y3X2RlZmNvbmZp
ZzogRW5hYmxlIHRoZSBQU0NJIENQVWlkbGUgZHJpdmVyCgpNYXJjIEdvbnphbGV6ICgxKToKICAg
ICAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIENQVSBjbG9jayBkcml2ZXJzIGZvciBRdWFsY29t
bSBtc204OTE2CgpNYXJlayBTenlwcm93c2tpICgyKToKICAgICAgQVJNOiBleHlub3NfZGVmY29u
ZmlnOiBFbmFibGUgQUhDSS1wbGF0Zm9ybSBTQVRBIGRyaXZlcgogICAgICBBUk06IG11bHRpX3Y3
X2RlZmNvbmZpZzogTWFrZSBNQVg3NzgwMiByZWd1bGF0b3IgZHJpdmVyIGJ1aWx0LWluCgpOaWNv
bGFzIFNhZW56IEp1bGllbm5lICgyKToKICAgICAgQVJNOiBkZWZjb25maWc6IGVuYWJsZSBjcHVm
cmVxIGRyaXZlciBmb3IgUlBpCiAgICAgIGFybTY0OiBkZWZjb25maWc6IGVuYWJsZSBjcHVmcmVx
IHN1cHBvcnQgZm9yIFJQaTMKClBhdHJpY2UgQ2hvdGFyZCAoMik6CiAgICAgIEFSTTogbXVsdGlf
djdfZGVmY29uZmlnOiBFbmFibGUgU1BJX1NUTTMyX1FTUEkgc3VwcG9ydAogICAgICBBUk06IG11
bHRpX3Y3X2RlZmNvbmZpZzogRW5hYmxlIFNQSV9TVE0zMl9RU1BJIHN1cHBvcnQKClJvYmluIEdv
bmcgKDEpOgogICAgICBhcm02NDogZGVmY29uZmlnOiBFbmFibGUgU0RNQSBvbiBpLm14OG1xLzht
bQoKVmlub2QgS291bCAoMSk6CiAgICAgIGFybTY0OiBkZWZjb25maWc6IEVuYWJsZSBTTTgxNTAg
R0NDIGFuZCBwaW5jdHJsIGRyaXZlcgoKV2lsbGlhbSBBLiBLZW5uaW5ndG9uIElJSSAoMSk6CiAg
ICAgIEFSTTogY29uZmlnczogYXNwZWVkOiBFbmFibGUgY29tbW9ubHkgdXNlZCBuZXR3b3JrIGZ1
bmN0aW9uYWxpdHkKClpob3UgV2FuZyAoMSk6CiAgICAgIGFybTY0OiBkZWZjb25maWc6IEVuYWJs
ZSBDT05GSUdfQUNQSV9BUEVJX1BDSUVBRVIKCiBhcmNoL2FybS9jb25maWdzL2FzcGVlZF9nNF9k
ZWZjb25maWcgfCA1MCArKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQogYXJjaC9hcm0vY29uZmln
cy9hc3BlZWRfZzVfZGVmY29uZmlnIHwgNjggKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0tCiBhcmNoL2FybS9jb25maWdzL2JjbTI4MzVfZGVmY29uZmlnICAgfCAgOSArKysrKwog
YXJjaC9hcm0vY29uZmlncy9leHlub3NfZGVmY29uZmlnICAgIHwgIDUgKystCiBhcmNoL2FybS9j
b25maWdzL2lteF92Nl92N19kZWZjb25maWcgfCAgMiArKwogYXJjaC9hcm0vY29uZmlncy9tdWx0
aV92N19kZWZjb25maWcgIHwgMjcgKysrKysrKysrKysrKy0KIGFyY2gvYXJtL2NvbmZpZ3MvcWNv
bV9kZWZjb25maWcgICAgICB8ICAxICsKIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgICAg
ICAgICB8IDIyICsrKysrKysrKysrKwogOCBmaWxlcyBjaGFuZ2VkLCAxMjMgaW5zZXJ0aW9ucygr
KSwgNjEgZGVsZXRpb25zKC0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
