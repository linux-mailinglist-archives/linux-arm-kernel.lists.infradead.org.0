Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6603E2ABCD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 21:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NI7Z2VWxqqKyOu1BKbh83QM37OkETPBWYh9W/s7uoGY=; b=jAAJm2Di/jOZmo
	4ho9vWxQulSa0CfzDUHUXpCDksPF5A+ims6+BdQXBdp8Q8DmyQ4TZVWuMOJj3v4sJ+rpfF/t2N2cW
	hqI7nggB5lcz+WAQ4+PYoanmPRtx0SB36+ohby0ALvTeCu68Q4Nz3FRGef3Kmn8OeXpsVJAm+FXPe
	KfhEsNvljM966yyb+Z/s73px8VAOWWZf2l2zK26EtCFbvpAe1AB3VR3q/nwrolOgjeNGPV4zwTrln
	PPke1rTus1n4gX9hunKCuh+hSBh5dTtAkGBgfEhQXM6GEjF2PDTrpxRFtivm/vd/N2DVB/673wlrh
	Kz4mXtuNV9i1XYHUz8Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUyZk-0006qE-UR; Sun, 26 May 2019 19:12:56 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUyZd-0006pn-1s
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 19:12:50 +0000
Received: by mail-yb1-xb43.google.com with SMTP id a3so5780582ybr.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 12:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3qfwkMk3jqUycxqYw8c0sLECnRBzwPP2sK1DjD5g7pM=;
 b=nkH3ufJ7uMj10iENbT39YlCH+iUTC+YBXyf6Ig5HTiaxvN6alZi1tRnWnVANOxsQVj
 FnW2AKt0BjYU3eu87fmmDxie6cg4tcd6TPrSYU72zA2Clpov7Tj1YIsEwvu4vE7qROs7
 UfgXpVAtM0b6mhPJlKS6HOOflmc8rt7Y+K9xF5a89adRMnzrEXJ8Yp6eF6nWOWFiJwxv
 sIEcSZoLpTKxpkxHajCLwOr2zhw/EDuqc8gPI/rTz9CoyF1GDXp9kMQkKrDUo+7pnwGv
 CbY0cnX5+rydeOWg3waohBLkFZni4Qzs3Knb98FUu5W7jAJVqnDTlnAfl8kys1zZiNY5
 s2fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3qfwkMk3jqUycxqYw8c0sLECnRBzwPP2sK1DjD5g7pM=;
 b=WFYoAu43BIV5daX4YOC2yqUkhgTpCdEtwhDL6DYtpj4zLiSVt5vGTkkDYelx0W+qX9
 39jj4xsEAiAnsgZ/UYvYKeAbsWkdr86JZkVMiMKHKxNTD2bspBNQjqegNBfYYWogM+ka
 YFwroAjZyhat7pyRD5lzL6504IkZjOW7kuiSsg4XB2KFp25IDZG3EWYPo4c9M1a4ZTy+
 E6YW8bXsJXmerAhkwrhBV+0CrIFR0XR8p67b/BCh5qkFBK4Q3nCeJjS8uJ5nxC6F+F2B
 Nh83WFq72cVkcyhZTPpnhhZmPhvEwbBzglag6hdcbW53iC6K6zeADbF59IK/1IEkVUK7
 eDCA==
X-Gm-Message-State: APjAAAWmqhM5TMMb6SlcU8OGCK+FzpX4ii8ashRpBPIT5l3yaDey3i6i
 ugdGhufYYA2Oh4GsNgPA7qX8DYaN+UbGPFwkZijCusIQZeo=
X-Google-Smtp-Source: APXvYqzrtpZcSrZuQRqwCwZ6caVJMS0tu3mLbwnZtrsAf+VmyJuuEGHn5L+hB9h5GZOF5b3IoegKPZ3NkGJPQPxAMYU=
X-Received: by 2002:a25:cecd:: with SMTP id x196mr6392089ybe.203.1558897967849; 
 Sun, 26 May 2019 12:12:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190525163819.21055-1-peron.clem@gmail.com>
 <20190525163819.21055-6-peron.clem@gmail.com>
 <20190526183425.nbhrk5pa264p7tdy@flea>
In-Reply-To: <20190526183425.nbhrk5pa264p7tdy@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 26 May 2019 21:12:36 +0200
Message-ID: <CAJiuCcfe7LHehZTzGvW+0LzqvDRs4dSjmGhRxkDHgbHrD2+MKA@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] dmaengine: sun6i: Add support for H6 DMA
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_121249_094887_E4E83FA2 
X-CRM114-Status: GOOD (  26.72  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gU3VuLCAyNiBNYXkgMjAxOSBhdCAyMDozNCwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBTYXQsIE1heSAyNSwgMjAx
OSBhdCAwNjozODoxN1BNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBGcm9tOiBK
ZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPgo+ID4gSDYgRE1BIGhh
cyBtb3JlIHRoYW4gMzIgc3VwcG9ydGVkIERSUXMsIHdoaWNoIG1lYW5zIHRoYXQgY29uZmlndXJh
dGlvbgo+ID4gcmVnaXN0ZXIgaXMgc2xpZ2h0bHkgcmVhcnJhbmdlZC4gSXQgYWxzbyBuZWVkcyBh
ZGRpdGlvbmFsIGNsb2NrIHRvIGJlCj4gPiBlbmFibGVkLgo+ID4KPiA+IEFkZCBzdXBwb3J0IGZv
ciBpdC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFi
ZWNAc2lvbC5uZXQ+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9kbWEvc3VuNmktZG1hLmMgfCA0NCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA0MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS9zdW42aS1kbWEuYyBiL2RyaXZlcnMvZG1hL3N1bjZpLWRtYS5jCj4gPiBp
bmRleCBmNWNiNWU4OWJmN2IuLjhkNDRkZGFlOTI2YSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
ZG1hL3N1bjZpLWRtYS5jCj4gPiArKysgYi9kcml2ZXJzL2RtYS9zdW42aS1kbWEuYwo+ID4gQEAg
LTY5LDE0ICs2OSwxOSBAQAo+ID4KPiA+ICAjZGVmaW5lIERNQV9DSEFOX0NVUl9DRkcgICAgIDB4
MGMKPiA+ICAjZGVmaW5lIERNQV9DSEFOX01BWF9EUlFfQTMxICAgICAgICAgMHgxZgo+ID4gKyNk
ZWZpbmUgRE1BX0NIQU5fTUFYX0RSUV9INiAgICAgICAgICAweDNmCj4gPiAgI2RlZmluZSBETUFf
Q0hBTl9DRkdfU1JDX0RSUV9BMzEoeCkgICgoeCkgJiBETUFfQ0hBTl9NQVhfRFJRX0EzMSkKPiA+
ICsjZGVmaW5lIERNQV9DSEFOX0NGR19TUkNfRFJRX0g2KHgpICAgKCh4KSAmIERNQV9DSEFOX01B
WF9EUlFfSDYpCj4gPiAgI2RlZmluZSBETUFfQ0hBTl9DRkdfU1JDX01PREVfQTMxKHgpICgoKHgp
ICYgMHgxKSA8PCA1KQo+ID4gKyNkZWZpbmUgRE1BX0NIQU5fQ0ZHX1NSQ19NT0RFX0g2KHgpICAo
KCh4KSAmIDB4MSkgPDwgOCkKPiA+ICAjZGVmaW5lIERNQV9DSEFOX0NGR19TUkNfQlVSU1RfQTMx
KHgpICAgICAgICAoKCh4KSAmIDB4MykgPDwgNykKPiA+ICAjZGVmaW5lIERNQV9DSEFOX0NGR19T
UkNfQlVSU1RfSDMoeCkgKCgoeCkgJiAweDMpIDw8IDYpCj4gPiAgI2RlZmluZSBETUFfQ0hBTl9D
RkdfU1JDX1dJRFRIKHgpICAgICgoKHgpICYgMHgzKSA8PCA5KQo+ID4KPiA+ICAjZGVmaW5lIERN
QV9DSEFOX0NGR19EU1RfRFJRX0EzMSh4KSAgKERNQV9DSEFOX0NGR19TUkNfRFJRX0EzMSh4KSA8
PCAxNikKPiA+ICsjZGVmaW5lIERNQV9DSEFOX0NGR19EU1RfRFJRX0g2KHgpICAgKERNQV9DSEFO
X0NGR19TUkNfRFJRX0g2KHgpIDw8IDE2KQo+ID4gICNkZWZpbmUgRE1BX0NIQU5fQ0ZHX0RTVF9N
T0RFX0EzMSh4KSAoRE1BX0NIQU5fQ0ZHX1NSQ19NT0RFX0EzMSh4KSA8PCAxNikKPiA+ICsjZGVm
aW5lIERNQV9DSEFOX0NGR19EU1RfTU9ERV9INih4KSAgKERNQV9DSEFOX0NGR19TUkNfTU9ERV9I
Nih4KSA8PCAxNikKPiA+ICAjZGVmaW5lIERNQV9DSEFOX0NGR19EU1RfQlVSU1RfQTMxKHgpICAg
ICAgICAoRE1BX0NIQU5fQ0ZHX1NSQ19CVVJTVF9BMzEoeCkgPDwgMTYpCj4gPiAgI2RlZmluZSBE
TUFfQ0hBTl9DRkdfRFNUX0JVUlNUX0gzKHgpIChETUFfQ0hBTl9DRkdfU1JDX0JVUlNUX0gzKHgp
IDw8IDE2KQo+ID4gICNkZWZpbmUgRE1BX0NIQU5fQ0ZHX0RTVF9XSURUSCh4KSAgICAoRE1BX0NI
QU5fQ0ZHX1NSQ19XSURUSCh4KSA8PCAxNikKPiA+IEBAIC0zMTksMTIgKzMyNCwyNCBAQCBzdGF0
aWMgdm9pZCBzdW42aV9zZXRfZHJxX2EzMSh1MzIgKnBfY2ZnLCBzOCBzcmNfZHJxLCBzOCBkc3Rf
ZHJxKQo+ID4gICAgICAgICAgICAgICAgIERNQV9DSEFOX0NGR19EU1RfRFJRX0EzMShkc3RfZHJx
KTsKPiA+ICB9Cj4gPgo+ID4gK3N0YXRpYyB2b2lkIHN1bjZpX3NldF9kcnFfaDYodTMyICpwX2Nm
Zywgczggc3JjX2RycSwgczggZHN0X2RycSkKPiA+ICt7Cj4gPiArICAgICAqcF9jZmcgfD0gRE1B
X0NIQU5fQ0ZHX1NSQ19EUlFfSDYoc3JjX2RycSkgfAo+ID4gKyAgICAgICAgICAgICAgIERNQV9D
SEFOX0NGR19EU1RfRFJRX0g2KGRzdF9kcnEpOwo+ID4gK30KPiA+ICsKPiA+ICBzdGF0aWMgdm9p
ZCBzdW42aV9zZXRfbW9kZV9hMzEodTMyICpwX2NmZywgczggc3JjX21vZGUsIHM4IGRzdF9tb2Rl
KQo+ID4gIHsKPiA+ICAgICAgICpwX2NmZyB8PSBETUFfQ0hBTl9DRkdfU1JDX01PREVfQTMxKHNy
Y19tb2RlKSB8Cj4gPiAgICAgICAgICAgICAgICAgRE1BX0NIQU5fQ0ZHX0RTVF9NT0RFX0EzMShk
c3RfbW9kZSk7Cj4gPiAgfQo+ID4KPiA+ICtzdGF0aWMgdm9pZCBzdW42aV9zZXRfbW9kZV9oNih1
MzIgKnBfY2ZnLCBzOCBzcmNfbW9kZSwgczggZHN0X21vZGUpCj4gPiArewo+ID4gKyAgICAgKnBf
Y2ZnIHw9IERNQV9DSEFOX0NGR19TUkNfTU9ERV9INihzcmNfbW9kZSkgfAo+ID4gKyAgICAgICAg
ICAgICAgIERNQV9DSEFOX0NGR19EU1RfTU9ERV9INihkc3RfbW9kZSk7Cj4gPiArfQo+ID4gKwo+
ID4gIHN0YXRpYyBzaXplX3Qgc3VuNmlfZ2V0X2NoYW5fc2l6ZShzdHJ1Y3Qgc3VuNmlfcGNoYW4g
KnBjaGFuKQo+ID4gIHsKPiA+ICAgICAgIHN0cnVjdCBzdW42aV9kZXNjICp0eGQgPSBwY2hhbi0+
ZGVzYzsKPiA+IEBAIC0xMTYwLDYgKzExNzcsMjggQEAgc3RhdGljIHN0cnVjdCBzdW42aV9kbWFf
Y29uZmlnIHN1bjUwaV9hNjRfZG1hX2NmZyA9IHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIEJJVChETUFfU0xBVkVfQlVTV0lEVEhfOF9CWVRFUyksCj4gPiAgfTsKPiA+Cj4gPiArLyoK
PiA+ICsgKiBUaGUgSDYgYmluZGluZyB1c2VzIHRoZSBudW1iZXIgb2YgZG1hIGNoYW5uZWxzIGZy
b20gdGhlCj4gPiArICogZGV2aWNlIHRyZWUgbm9kZS4KPiA+ICsgKi8KPiA+ICtzdGF0aWMgc3Ry
dWN0IHN1bjZpX2RtYV9jb25maWcgc3VuNTBpX2g2X2RtYV9jZmcgPSB7Cj4gPiArICAgICAuY2xv
Y2tfYXV0b2dhdGVfZW5hYmxlID0gc3VuNmlfZW5hYmxlX2Nsb2NrX2F1dG9nYXRlX2gzLAo+ID4g
KyAgICAgLnNldF9idXJzdF9sZW5ndGggPSBzdW42aV9zZXRfYnVyc3RfbGVuZ3RoX2gzLAo+ID4g
KyAgICAgLnNldF9kcnEgICAgICAgICAgPSBzdW42aV9zZXRfZHJxX2g2LAo+ID4gKyAgICAgLnNl
dF9tb2RlICAgICAgICAgPSBzdW42aV9zZXRfbW9kZV9oNiwKPiA+ICsgICAgIC5zcmNfYnVyc3Rf
bGVuZ3RocyA9IEJJVCgxKSB8IEJJVCg0KSB8IEJJVCg4KSB8IEJJVCgxNiksCj4gPiArICAgICAu
ZHN0X2J1cnN0X2xlbmd0aHMgPSBCSVQoMSkgfCBCSVQoNCkgfCBCSVQoOCkgfCBCSVQoMTYpLAo+
ID4gKyAgICAgLnNyY19hZGRyX3dpZHRocyAgID0gQklUKERNQV9TTEFWRV9CVVNXSURUSF8xX0JZ
VEUpIHwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIEJJVChETUFfU0xBVkVfQlVTV0lE
VEhfMl9CWVRFUykgfAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgQklUKERNQV9TTEFW
RV9CVVNXSURUSF80X0JZVEVTKSB8Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICBCSVQo
RE1BX1NMQVZFX0JVU1dJRFRIXzhfQllURVMpLAo+ID4gKyAgICAgLmRzdF9hZGRyX3dpZHRocyAg
ID0gQklUKERNQV9TTEFWRV9CVVNXSURUSF8xX0JZVEUpIHwKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgIEJJVChETUFfU0xBVkVfQlVTV0lEVEhfMl9CWVRFUykgfAo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgQklUKERNQV9TTEFWRV9CVVNXSURUSF80X0JZVEVTKSB8Cj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICBCSVQoRE1BX1NMQVZFX0JVU1dJRFRIXzhfQllURVMp
LAo+ID4gKyAgICAgLmhhc19tYnVzX2NsayA9IHRydWUsCj4gPiArfTsKPiA+ICsKPiA+ICAvKgo+
ID4gICAqIFRoZSBWM3MgaGF2ZSBvbmx5IDggcGh5c2ljYWwgY2hhbm5lbHMsIGEgbWF4aW11bSBE
UlEgcG9ydCBpZCBvZiAyMywKPiA+ICAgKiBhbmQgYSB0b3RhbCBvZiAyNCB1c2FibGUgc291cmNl
IGFuZCBkZXN0aW5hdGlvbiBlbmRwb2ludHMuCj4gPiBAQCAtMTE5MCw2ICsxMjI5LDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3VuNmlfZG1hX21hdGNoW10gPSB7Cj4gPiAg
ICAgICB7IC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1kbWEiLCAuZGF0YSA9ICZz
dW44aV9oM19kbWFfY2ZnIH0sCj4gPiAgICAgICB7IC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixz
dW44aS12M3MtZG1hIiwgLmRhdGEgPSAmc3VuOGlfdjNzX2RtYV9jZmcgfSwKPiA+ICAgICAgIHsg
LmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1hNjQtZG1hIiwgLmRhdGEgPSAmc3VuNTBp
X2E2NF9kbWFfY2ZnIH0sCj4gPiArICAgICB7IC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41
MGktaDYtZG1hIiwgLmRhdGEgPSAmc3VuNTBpX2g2X2RtYV9jZmcgfSwKPiA+ICAgICAgIHsgLyog
c2VudGluZWwgKi8gfQo+ID4gIH07Cj4gPiAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgc3VuNmlf
ZG1hX21hdGNoKTsKPiA+IEBAIC0xMjg4LDggKzEzMjgsOCBAQCBzdGF0aWMgaW50IHN1bjZpX2Rt
YV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgcmV0ID0gb2Zf
cHJvcGVydHlfcmVhZF91MzIobnAsICJkbWEtcmVxdWVzdHMiLCAmc2RjLT5tYXhfcmVxdWVzdCk7
Cj4gPiAgICAgICBpZiAocmV0ICYmICFzZGMtPm1heF9yZXF1ZXN0KSB7Cj4gPiAgICAgICAgICAg
ICAgIGRldl9pbmZvKCZwZGV2LT5kZXYsICJNaXNzaW5nIGRtYS1yZXF1ZXN0cywgdXNpbmcgJXUu
XG4iLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICBETUFfQ0hBTl9NQVhfRFJRX0EzMSk7Cj4g
PiAtICAgICAgICAgICAgIHNkYy0+bWF4X3JlcXVlc3QgPSBETUFfQ0hBTl9NQVhfRFJRX0EzMTsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgRE1BX0NIQU5fTUFYX0RSUV9INik7Cj4gPiArICAg
ICAgICAgICAgIHNkYy0+bWF4X3JlcXVlc3QgPSBETUFfQ0hBTl9NQVhfRFJRX0g2Owo+Cj4gVGhp
cyBpcyBjaGFuZ2luZyB0aGUgYmluZGluZyB0aG91Z2gsIHNpbmNlIHdlJ3JlIGNoYW5naW5nIHRo
ZQo+IGRlZmF1bHQuIFRoaXMgc2hvdWxkIGJlIHJlZmxlY3RlZCBpbiB0aGUgYmluZGluZywgYW5k
IHdlIHNob3VsZCBrZWVwCj4gdGhlIHNhbWUgZGVmYXVsdCBpbiB0aGUgZGV2aWNlIHRyZWUgYmlu
ZGluZy4KCkFncmVlLCBINiBkZXZpY2UtdHJlZSB3aWxsIGhhdmUgdGhlICJkbWEtcmVxdWVzdCIg
cHJvcGVydHkuCkFzIHRoaXMgbW9kaWZpY2F0aW9uIGlzIG5vdCBtYW5kYXRvcnksIHdlIGNhbiBk
cm9wIGl0IHRvIGF2b2lkCmJpbmRpbmdzIG1vZGlmaWNhdGlvbi4KCldoYXQgZG8geW91IHRoaW5r
PwoKVGhhbmtzIGZvciB5b3VyIHJldmlldywKQ2zDqW1lbnQKCj4KPiBNYXhpbWUKPgo+IC0tCj4g
TWF4aW1lIFJpcGFyZCwgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5l
ZXJpbmcKPiBodHRwczovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
