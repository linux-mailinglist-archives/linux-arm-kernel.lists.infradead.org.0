Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D31A1F9C0B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DwAg0VxxuoxmPDgsFeUIBiSen87zHqFvBNV43yEXbY8=; b=SbSCkb14EXkCIA
	3rQDAz2GCSSPbZzasyedceD0k4eXfpxp6IKAnc0DMU+6ZlmVpmzLOime1MniQTq8vrByVgT/fJ+ms
	lBM3M8C2AWfS4m0uaccsL6bdtF5NNjQWRQuIMtnu0NgSD2pvX4BZJlOvb4O1YFh7mopV24wopZVDi
	OV67S+sFmwVmEAZIdQTMnJojG89uKCDFMEgLmDMaacEPImo5MrTrFUE2JLXuwC3AzWmxDt2iRHBS7
	8aCjE8SKdLCQhFpbBTxrCGmF2M5ud61EbJ+mW6fVSe1rO27FCgLsk98N8MEUEJLWVjweAxN1l7MsM
	9AF67MZRVh7bg6zmeNyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkr7h-0004Gb-Qy; Mon, 15 Jun 2020 15:34:09 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkr7Z-0004G2-Bl
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 15:34:02 +0000
Received: by mail-io1-xd41.google.com with SMTP id y5so18274403iob.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 08:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HwRsf1wA8NUSGSOKG/QxGcXlEzglL7CjJxi7J6vRu78=;
 b=MammdyoUIwR0+8BMgOGo8Ubv1yDldOm8IhUp/SS/QLenCF/Ac02/4NFoTzA7MpVeOG
 PywyXf2yodud/GMNwOmMun5Z75iDu2ePtvDN0RNYETMBZGlmVSsaYThp1uqO+hnjAaUu
 k1nKEDoM10jrt4ec36o/fgZIpnxf94zjtdoyldYfJqLIGNTK8nsWW/EGQwqzjh/cqbs0
 kkUJdOKz99T3BY7UJDY4ovGrm93fkjR7sC9BXi8sE6/iXyyLXx/lWtDDd8KNSO3OcIHn
 K8uin7wx8uMtjoKgq5/bZWyjEprNfaEw1Vvu9Miic4S3OLY3oB5/SfKJwzviYr1NUq8c
 DDWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HwRsf1wA8NUSGSOKG/QxGcXlEzglL7CjJxi7J6vRu78=;
 b=irceUit96Jpd43QDyI48FMcOyy2ekhi8IvOmn40G5BIBXe28ZmU2lFITLOz/WZx+3j
 Th1cqQ6qPlwUtOeWTGKesUEUIrQImIMdKRoqUbfCe8TsxQh7qm6elEdZUn859yi1S38h
 0yy9FW8ruDa7Ek+VJAbGi7gCtnunJGFurNihR4JKjRP1k/xDJvbxeH+klwHNAjCAQPO0
 n7+IkeV4i0Z0Wq+Qtu3nml1mtPlpbtbvH3u9+stKIkmn1ewFFIwnq97eu6L36N5rwe/i
 dBux38zVr6FIu/opig5zXq9Op6Wx/6n0lbdDcuvAE9y4fyHt1+f2c5tpy+91XDRQpNzU
 +gsQ==
X-Gm-Message-State: AOAM531T/k4pr7xdUxucmg+N2n5OK+yKLViTsi2yz/lU3LivobsR93cF
 aeKgvlBysB1nubqV0L3WMpezo183GUvebDfzVA==
X-Google-Smtp-Source: ABdhPJxdGyqicvmBjO3kQ/FFXeZQlATaOH5wfsus++n/tHm7bnDzj6tCg+lMi3lpa9xRO1aEc8Xk7JDuAgsu2nEqCQE=
X-Received: by 2002:a02:896:: with SMTP id 144mr10534416jac.126.1592235240683; 
 Mon, 15 Jun 2020 08:34:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200615130032.931285-1-hch@lst.de>
 <20200615130032.931285-3-hch@lst.de>
 <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
 <20200615141239.GA12951@lst.de>
 <CAK8P3a2MeZhayZWkPbd4Ckq3n410p_n808NJTwN=JjzqHRiAXg@mail.gmail.com>
 <20200615144310.GA15101@lst.de>
 <CAK8P3a17h782gO65qJ9Mmz0EuiTSKQPEyr_=nvqOtnmQZuh9Kw@mail.gmail.com>
 <20200615150926.GA17108@lst.de>
In-Reply-To: <20200615150926.GA17108@lst.de>
From: Brian Gerst <brgerst@gmail.com>
Date: Mon, 15 Jun 2020 11:33:49 -0400
Message-ID: <CAMzpN2htYX7s6pmRg-c8qwZL1f1_+sB=ztDG_L=617hWsm-=8g@mail.gmail.com>
Subject: Re: [PATCH 2/6] exec: simplify the compat syscall handling
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_083401_418320_2F15E7D6 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [brgerst[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Parisc List <linux-parisc@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 sparclinux <sparclinux@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMTUsIDIwMjAgYXQgMTE6MTAgQU0gQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBs
c3QuZGU+IHdyb3RlOgo+Cj4gT24gTW9uLCBKdW4gMTUsIDIwMjAgYXQgMDQ6NDY6MTVQTSArMDIw
MCwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiA+IEhvdyBhYm91dCB0aGlzIG9uZToKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC94ODYvZW50cnkvc3lzY2FsbF94MzIuYyBiL2FyY2gveDg2L2VudHJ5
L3N5c2NhbGxfeDMyLmMKPiA+IGluZGV4IDNkOGQ3MGQzODk2Yy4uMGNlMTU4MDdjZjU0IDEwMDY0
NAo+ID4gLS0tIGEvYXJjaC94ODYvZW50cnkvc3lzY2FsbF94MzIuYwo+ID4gKysrIGIvYXJjaC94
ODYvZW50cnkvc3lzY2FsbF94MzIuYwo+ID4gQEAgLTE2LDYgKzE2LDkgQEAKPiA+ICAjdW5kZWYg
X19TWVNDQUxMX1gzMgo+ID4gICN1bmRlZiBfX1NZU0NBTExfQ09NTU9OCj4gPgo+ID4gKyNkZWZp
bmUgX194MzJfc3lzX2V4ZWN2ZSBfX3g2NF9zeXNfZXhlY3ZlCj4gPiArI2RlZmluZSBfX3gzMl9z
eXNfZXhlY3ZlYXQgX194NjRfc3lzX2V4ZWN2ZWF0Cj4gPiArCj4KPgo+IGFyY2gveDg2L2VudHJ5
L3N5c2NhbGxfeDMyLmM6MTk6MjY6IGVycm9yOiDigJhfX3g2NF9zeXNfZXhlY3Zl4oCZIHVuZGVj
bGFyZWQgaGVyZSAobm90IGluIGEgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYX194MzJfc3lz
X2V4ZWN2ZeKAmT8KPiAgICAxOSB8ICNkZWZpbmUgX194MzJfc3lzX2V4ZWN2ZSBfX3g2NF9zeXNf
ZXhlY3ZlCj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fgo+IGFyY2gveDg2L2VudHJ5L3N5c2NhbGxfeDMyLmM6MjI6Mzk6IG5vdGU6IGluIGV4cGFuc2lv
biBvZiBtYWNybyDigJhfX3gzMl9zeXNfZXhlY3Zl4oCZCj4gICAgMjIgfCAjZGVmaW5lIF9fU1lT
Q0FMTF9YMzIobnIsIHN5bSkgW25yXSA9IF9feDMyXyMjc3ltLAo+ICAgICAgIHwgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn4KPiAuL2FyY2gveDg2L2luY2x1ZGUv
Z2VuZXJhdGVkL2FzbS9zeXNjYWxsc182NC5oOjM0NDoxOiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8g4oCYX19TWVNDQUxMX1gzMuKAmQo+ICAgMzQ0IHwgX19TWVNDQUxMX1gzMig1MjAsIHN5
c19leGVjdmUpCj4gICAgICAgfCBefn5+fn5+fn5+fn5+Cj4gYXJjaC94ODYvZW50cnkvc3lzY2Fs
bF94MzIuYzoyMDoyODogZXJyb3I6IOKAmF9feDY0X3N5c19leGVjdmVhdOKAmSB1bmRlY2xhcmVk
IGhlcmUgKG5vdCBpbiBhIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFuIOKAmF9feDMyX3N5c19leGVj
dmVhdOKAmT8KPiAgICAyMCB8ICNkZWZpbmUgX194MzJfc3lzX2V4ZWN2ZWF0IF9feDY0X3N5c19l
eGVjdmVhdAo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+
fn5+fn5+Cj4gYXJjaC94ODYvZW50cnkvc3lzY2FsbF94MzIuYzoyMjozOTogbm90ZTogaW4gZXhw
YW5zaW9uIG9mIG1hY3JvIOKAmF9feDMyX3N5c19leGVjdmVhdOKAmQo+ICAgIDIyIHwgI2RlZmlu
ZSBfX1NZU0NBTExfWDMyKG5yLCBzeW0pIFtucl0gPSBfX3gzMl8jI3N5bSwKPiAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+Cj4gLi9hcmNoL3g4Ni9p
bmNsdWRlL2dlbmVyYXRlZC9hc20vc3lzY2FsbHNfNjQuaDozNjk6MTogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvIOKAmF9fU1lTQ0FMTF9YMzLigJkKPiAgIDM2OSB8IF9fU1lTQ0FMTF9YMzIo
NTQ1LCBzeXNfZXhlY3ZlYXQpCj4gICAgICAgfCBefn5+fn5+fn5+fn5+Cj4gbWFrZVsyXTogKioq
IFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI4MTogYXJjaC94ODYvZW50cnkvc3lzY2FsbF94MzIu
b10gRXJyb3IgMQo+IG1ha2VbMV06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0OTc6IGFy
Y2gveDg2L2VudHJ5XSBFcnJvciAyCj4gbWFrZVsxXTogKioqIFdhaXRpbmcgZm9yIHVuZmluaXNo
ZWQgam9icy4uLi4KPiBrZXJuZWwvZXhpdC5vOiB3YXJuaW5nOiBvYmp0b29sOiBfX3g2NF9zeXNf
ZXhpdF9ncm91cCgpKzB4MTQ6IHVucmVhY2hhYmxlIGluc3RydWN0aW9uCj4gbWFrZTogKioqIFtN
YWtlZmlsZToxNzY0OiBhcmNoL3g4Nl0gRXJyb3IgMgo+IG1ha2U6ICoqKiBXYWl0aW5nIGZvciB1
bmZpbmlzaGVkIGpvYnMuLi4uCgpJZiB5b3UgbW92ZSB0aG9zZSBhbGlhc2VzIGFib3ZlIGFsbCB0
aGUgX19TWVNDQUxMXyogZGVmaW5lcyBpdCB3aWxsCndvcmssIHNpbmNlIHRoYXQgd2lsbCBnZXQg
dGhlIGZvcndhcmQgZGVjbGFyYXRpb24gdG9vLiAgVGhpcyB3b3VsZCBiZQp0aGUgc2ltcGxlc3Qg
d29ya2Fyb3VuZC4KCi0tCkJyaWFuIEdlcnN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
