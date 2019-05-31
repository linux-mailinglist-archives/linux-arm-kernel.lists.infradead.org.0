Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9A330DB1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 14:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRSwDaXJb2r0dcKcstiPhcIl5GNdncWGiyNjenGiS/s=; b=oXeLlPFrZr1FYP
	ekbLA4KxVzn4Xx3TIXjKmdzjMhPPyQF44FzMtQIZxXCqUHaIYzIohjIXH7QB8vZlS23dbyj07alnY
	22nH2dZWXNMXi/9/ZYB/7IrqNJSf27omZNO3EDouAOlE2e6oY5VwXiOpSAJ9pkBX8AGnvywnJaTbg
	jlDsZN6xXwOtdY9gYyMSMjkam5hNIXzomAPNLliIMf22/At1tKjFyr73vZpn99oZ1ilYO7s55r2mQ
	aG5grn7AWRVtINymwUcjxnMDAqKpVbCwJFT3I2gGT8fzxONeba5siqGiIFScc/nDNsd9wAfPsKGSi
	KVZVs2G5FF41lpcXkR2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWgCg-00026A-NT; Fri, 31 May 2019 12:00:10 +0000
Received: from mail-it1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWgCX-0001eg-Fq
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 12:00:02 +0000
Received: by mail-it1-f195.google.com with SMTP id j204so9466462ite.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 04:59:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8hQ+GCrGtuPrUnv8FXJXFq30i6N22Yddc21VC2oAxhs=;
 b=B4nHXAldIptuk2EjbDvKi56IHbJF1rAfFYAUb7MeDNm6IOdFU+MfAdZJy2eIa1FKIb
 hsTe2BUdkSbi4J+cMi40WLKJTArQY2ULbeifOK9xLSNf0stJbO19nM3Mc2imXXqPN+KH
 Ej3P6e+6HHqaC4snJljFsh9EALXvvlpH25OmG71Eacd2+HmuueuldUD/+3e43uNlCBYF
 WLdpa92GwmALGc5dtBsOQ3zuC7Z4ktvS4Ap8Arzo2VNnVZDWKVL2wLCoGsKSzglkKY9R
 Ip/PlNz0zrM1J8fWNXoz0E4+gQSqkqQ6RY8VVj3u7qQp1lbEMKAsSxZJ0Rc1JzdrOt75
 X6yw==
X-Gm-Message-State: APjAAAXr6jESSPhd1CQLbz6Ja0jGT5SSI+r6b+l05MmaTexmbxxTO6Y2
 j0RVpiNheV2E6Ls+ZOyzr8ebHlqoaXxv2ZbsiJA=
X-Google-Smtp-Source: APXvYqxt9w2YrsySig7OJuFDGJfyzP1yL3TiF4rpNj+o9AiR0VLFKyM39OG7PDkPrKdvZ8PRQ0gK3c64fLn8KFUlk98=
X-Received: by 2002:a24:5a45:: with SMTP id v66mr6878435ita.140.1559303998746; 
 Fri, 31 May 2019 04:59:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAJiuCcfSUAJ2w1qd-OC_CJPXoUVL03dCX1OeaUykNioHkR8Ciw@mail.gmail.com>
In-Reply-To: <CAJiuCcfSUAJ2w1qd-OC_CJPXoUVL03dCX1OeaUykNioHkR8Ciw@mail.gmail.com>
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Date: Fri, 31 May 2019 13:59:47 +0200
Message-ID: <CAAObsKBuDDF225otw-2kBKufmpS6ng9feBshUPFKNDGv3pE8Ww@mail.gmail.com>
Subject: Re: Panfrost impossible to probe without opp table
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_050001_530789_5ED07F1E 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomeu.vizoso[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh+dt@kernel.org>, ezequiel Garcia <ezequiel@collabora.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyOSBNYXkgMjAxOSBhdCAyMzoyOSwgQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVt
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IEkgaGF2ZSByZWJhc2UgbXkga2VybmVsIG9u
IGxhdGVzdCA1LjItcmMyLCBhbmQgbXkgcGFuZnJvc3QgZHJpdmVyIGlzCj4gbm8gbW9yZSBwcm9i
aW5nLgo+Cj4gVGhlIGlzc3VlIGlzIGNvbWluZyBmcm9tIGYzNjE3YjQ0OWQwYmNmM2I1ZDgwYTk3
ZjUxNDk4ZGNmNzQ2M2NmN2UKPiAgICAgZHJtL3BhbmZyb3N0OiBTZWxlY3QgZGV2ZnJlcQo+Cj4g
ICAgIEN1cnJlbnRseSwgdGhlcmUgaXMgc29tZSBsb2dpYyBmb3IgdGhlIGRyaXZlciB0byB3b3Jr
IHdpdGhvdXQgZGV2ZnJlcS4KPiAgICAgSG93ZXZlciwgdGhlIGRyaXZlciBhY3R1YWxseSBmYWls
cyB0byBwcm9iZSBpZiAhQ09ORklHX1BNX0RFVkZSRVEuCj4KPiAgICAgRml4IHRoaXMgYnkgc2Vs
ZWN0aW5nIGRldmZyZXEsIGFuZCBkcm9wIHRoZSBhZGRpdGlvbmFsIGNoZWNrcwo+ICAgICBmb3Ig
ZGV2ZnJlcS4KPgo+IEl0IHNlZW1zIHRoYXQgd2l0aCB0aGlzIGNvbW1pdCB0aGUgT1BQIHRhYmxl
IGlzIG5vdyBtYW5kYXRvcnkuCj4gaXMgaXQgaW50ZW50aW9uYWw/CgpIaSBDbMOpbWVudCwKCmRl
dmZyZXEgc3VwcG9ydCBpcyBpbnRlbnRpb25hbGx5IHJlcXVpcmVkLiBJIGdvdCBhIEg2NCBib2Fy
ZCB3aGljaCBJJ20KdXNpbmcgdG8gYWRkIFQ3MjAgc3VwcG9ydCB0byBQYW5mcm9zdC4KCk9uY2Ug
SSdtIGFibGUgdG8gdGVzdCB0aGUgR1BVIHByb3Blcmx5IGFsb25nIHdpdGggZnJlcXVlbmN5IHNj
YWxpbmcsIEkKd2lsbCBwaW5nIHlvdSBzbyB5b3UgY2FuIHJldGVzdCBhbmQgcmVzdWJtaXQuCgpU
aGFua3MsCgpUb21ldQoKPiBBY3R1YWxseQo+IFsgICAgMy4wNDYyMzddIHBhbmZyb3N0IDE4MDAw
MDAuZ3B1OiBjbG9jayByYXRlID0gNDMyMDAwMDAwCj4gWyAgICAzLjA1MTU5M10gcGFuZnJvc3Qg
MTgwMDAwMC5ncHU6IGJ1c19jbG9jayByYXRlID0gMTAwMDAwMDAwCj4gWyAgICAzLjA5NjAxMl0g
cGFuZnJvc3QgMTgwMDAwMC5ncHU6IG1hbGktdDcyMCBpZCAweDcyMCBtYWpvciAweDEKPiBtaW5v
ciAweDEgc3RhdHVzIDB4MAo+IFsgICAgMy4xMDM2ODJdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBm
ZWF0dXJlczogMDAwMDAwMDAsMTAzMDllNDAsCj4gaXNzdWVzOiAwMDAwMDAwMCwyMTA1NDQwMAo+
IFsgICAgMy4xMTE3ODldIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBGZWF0dXJlczogTDI6MHgwNzEx
MDIwNgo+IFNoYWRlcjoweDAwMDAwMDAwIFRpbGVyOjB4MDAwMDA4MDkgTWVtOjB4MSBNTVU6MHgw
MDAwMjgyMSBBUzoweGYKPiBKUzoweDcKPiBbICAgIDMuMTIzNDM1XSBwYW5mcm9zdCAxODAwMDAw
LmdwdTogc2hhZGVyX3ByZXNlbnQ9MHgzIGwyX3ByZXNlbnQ9MHgxCj4gWyAgICAzLjEzMDQwNV0g
cGFuZnJvc3QgMTgwMDAwMC5ncHU6IEZhdGFsIGVycm9yIGR1cmluZyBkZXZmcmVxIGluaXQKPgo+
IFdpdGggY29tbWl0IHJldmVydGVkCj4gWyAgICAzLjAzODIzNl0gcGFuZnJvc3QgMTgwMDAwMC5n
cHU6IGNsb2NrIHJhdGUgPSA0MzIwMDAwMDAKPiBbICAgIDMuMDQzNTkzXSBwYW5mcm9zdCAxODAw
MDAwLmdwdTogYnVzX2Nsb2NrIHJhdGUgPSAxMDAwMDAwMDAKPiBbICAgIDMuMDg3OTk0XSBwYW5m
cm9zdCAxODAwMDAwLmdwdTogbWFsaS10NzIwIGlkIDB4NzIwIG1ham9yIDB4MQo+IG1pbm9yIDB4
MSBzdGF0dXMgMHgwCj4gWyAgICAzLjA5NTY1OF0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGZlYXR1
cmVzOiAwMDAwMDAwMCwxMDMwOWU0MCwKPiBpc3N1ZXM6IDAwMDAwMDAwLDIxMDU0NDAwCj4gWyAg
ICAzLjEwMzc2M10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IEZlYXR1cmVzOiBMMjoweDA3MTEwMjA2
Cj4gU2hhZGVyOjB4MDAwMDAwMDAgVGlsZXI6MHgwMDAwMDgwOSBNZW06MHgxIE1NVToweDAwMDAy
ODIxIEFTOjB4Zgo+IEpTOjB4Nwo+IFsgICAgMy4xMTU0MTBdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1
OiBzaGFkZXJfcHJlc2VudD0weDMgbDJfcHJlc2VudD0weDEKPiBbICAgIDMuMTIyNzk4XSBbZHJt
XSBJbml0aWFsaXplZCBwYW5mcm9zdCAxLjAuMCAyMDE4MDkwOCBmb3IKPiAxODAwMDAwLmdwdSBv
biBtaW5vciAwCj4KPgo+IFRoYW5rcywKPiBDbMOpbWVudAo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
