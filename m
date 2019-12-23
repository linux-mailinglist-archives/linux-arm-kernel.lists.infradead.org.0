Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF3C129867
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 16:43:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AtIj/Bl6GkJ8rmaXvqCkV0ZTEU4zRjTFCSdAGzUu9bM=; b=U3KhAeeEhREaOe6dBJyHimhWx+
	rpgl88OSeqjeS/xVwCa05VftmtdHIxi71W4uLde5Amt671dVR/6WPNsU/pUqXaAl2WushmvY5pTjZ
	xjqIP04OLypRFn767CykJ7TwePArOOejqsXSDk/kCP7ZK2ebYqfvWnfDZ2qYQv8GZLU6wF6C3P8H+
	/iIfqG59bAeckiwUtfD1OiLw+R+t76SXTl4AcvVKcr1RfuFR1CVFnts6IDWbVvcTS9F346GoAHjV0
	BnI+I3YULKC0vNLIrWNIGrwdlKrguGj1WyDVvEf/LWPr5y+VsLEQ+vxNx08ZprPt1DsP9etoOGm3m
	AV9yeQgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijPrO-0005pp-8N; Mon, 23 Dec 2019 15:43:06 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijPqz-0005dt-N3; Mon, 23 Dec 2019 15:42:43 +0000
Received: by mail-lj1-x244.google.com with SMTP id a13so18145059ljm.10;
 Mon, 23 Dec 2019 07:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=UfH6R7URisIBJYt/MBDGH5nz2k2vfj6ZWJ4j+/k+CPY=;
 b=JcX2oVN3ptxY2GpvfCvva21mMZF0U/9nHZiLNdZES054N4kY1FycncMmQ/rwOj/BkL
 1nIsIm4YqetOO5Lwr+SmkxRUlFh4evXomIl404VOhD/aG3IjcR3LdiS2ZzLgaDcaphJW
 7Gr0EtkE+aGI7XhN7mYycGl+HUSFvNYWTucr+Vx7bQ/v0Jpbeg+BUT7BvFd104gzVdCt
 T7fX0U9LACPJVbsdN4XKGh178cNa2spcOyu8cN9bGdJ84vYjTZr56AVRQlnoTSV96LB7
 LjkolJ7dzOnp1NcKwdpm3w1o/wsuxNUroOQUGnQQvLgTyA4fH39pCbFC+wrnaH8IMLEE
 s4GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UfH6R7URisIBJYt/MBDGH5nz2k2vfj6ZWJ4j+/k+CPY=;
 b=EOEa2vSBr3O+Y9ktvEKPTxXE3OknEwfqd5dxGsxqDyDUSiS3jqTQDs8DoxSKN8rQ5c
 vP0prbj88ZkjPuYwFG1tgjsp3GQGuy2zCx16aPFQGCySVrnjXVs6wTKVE6ZilMOivRiF
 uA4fyir5k6u/btyqerAksd8bpGN6tBq73o6F7XHfNRvoSCt/mevsa9YNMg6H9nEy+lqG
 wdlKV+VBIU3TX6kE+f/t7l5q1cfSznOU/MYJh17b/bidE4zETrkJI205CpmYm5yxla3k
 nKeEfjfiYdtNSGhtzw4Cq2WBIlnDlz+lUD9YiSBIsiabq7QNiQ+Ak3tdCBHe1bvNWJn8
 qPQQ==
X-Gm-Message-State: APjAAAVXAW06YprXR/JnP9aJ5uRkCoCK3BJSjPLWjpiPyq5Gi9rCaN1e
 0DfyveX6hJMKsDljII21sAg=
X-Google-Smtp-Source: APXvYqxPpddbnO1oaHYjYKe79636XT0Af+JvtDZqrCXBmTftfr8pcshxfnvAxMJy3qrn5gr9oinTbQ==
X-Received: by 2002:a2e:974b:: with SMTP id f11mr18478200ljj.173.1577115759073; 
 Mon, 23 Dec 2019 07:42:39 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id 21sm6953071ljv.19.2019.12.23.07.42.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Dec 2019 07:42:38 -0800 (PST)
Subject: Re: [PATCH 4/9] memory: tegra: convert to
 devm_platform_ioremap_resource
To: Yangtao Li <tiny.windzz@gmail.com>, ssantosh@kernel.org,
 paul@crapouillou.net, matthias.bgg@gmail.com, rogerq@ti.com,
 tony@atomide.com, lukasz.luba@arm.com, kgene@kernel.org, krzk@kernel.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, allison@lohutok.net,
 tglx@linutronix.de, yong.wu@mediatek.com, jroedel@suse.de,
 evgreen@chromium.org, rfontana@redhat.com, pdeschrijver@nvidia.com,
 john@phrozen.org, alexios.zavras@intel.com, sboyd@kernel.org,
 kstewart@linuxfoundation.org, info@metux.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-omap@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20191222185034.4665-1-tiny.windzz@gmail.com>
 <20191222185034.4665-4-tiny.windzz@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <04758814-8e22-79b9-8ed1-ac0c31762d21@gmail.com>
Date: Mon, 23 Dec 2019 18:42:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191222185034.4665-4-tiny.windzz@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_074241_823325_5BF9D261 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

MjIuMTIuMjAxOSAyMTo1MCwgWWFuZ3RhbyBMaSDQv9C40YjQtdGCOgo+IFVzZSBkZXZtX3BsYXRm
b3JtX2lvcmVtYXBfcmVzb3VyY2UoKSB0byBzaW1wbGlmeSBjb2RlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFlhbmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9t
ZW1vcnkvdGVncmEvbWMuYyAgICAgICAgICAgfCA0ICstLS0KPiAgZHJpdmVycy9tZW1vcnkvdGVn
cmEvdGVncmExMjQtZW1jLmMgfCA0ICstLS0KPiAgZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmEx
ODYuYyAgICAgfCA0ICstLS0KPiAgZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmEyMC1lbWMuYyAg
fCA0ICstLS0KPiAgNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lbW9yeS90ZWdyYS9tYy5jIGIvZHJpdmVy
cy9tZW1vcnkvdGVncmEvbWMuYwo+IGluZGV4IGVjODQwMzU1N2VkNC4uNzEzOTBkNGFkODA5IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVtb3J5L3RlZ3JhL21jLmMKPiArKysgYi9kcml2ZXJzL21l
bW9yeS90ZWdyYS9tYy5jCj4gQEAgLTU5Myw3ICs1OTMsNiBAQCBzdGF0aWMgX19tYXliZV91bnVz
ZWQgaXJxcmV0dXJuX3QgdGVncmEyMF9tY19pcnEoaW50IGlycSwgdm9pZCAqZGF0YSkKPiAgCj4g
IHN0YXRpYyBpbnQgdGVncmFfbWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiAgewo+IC0Jc3RydWN0IHJlc291cmNlICpyZXM7Cj4gIAlzdHJ1Y3QgdGVncmFfbWMgKm1jOwo+
ICAJdm9pZCAqaXNyOwo+ICAJdTY0IG1hc2s7Cj4gQEAgLTYxOSw4ICs2MTgsNyBAQCBzdGF0aWMg
aW50IHRlZ3JhX21jX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkvKiBs
ZW5ndGggb2YgTUMgdGljayBpbiBuYW5vc2Vjb25kcyAqLwo+ICAJbWMtPnRpY2sgPSAzMDsKPiAg
Cj4gLQlyZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwgSU9SRVNPVVJDRV9NRU0sIDAp
Owo+IC0JbWMtPnJlZ3MgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcmVzKTsK
PiArCW1jLT5yZWdzID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwo+
ICAJaWYgKElTX0VSUihtYy0+cmVncykpCj4gIAkJcmV0dXJuIFBUUl9FUlIobWMtPnJlZ3MpOwo+
ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmExMjQtZW1jLmMgYi9k
cml2ZXJzL21lbW9yeS90ZWdyYS90ZWdyYTEyNC1lbWMuYwo+IGluZGV4IDQ2NGYwY2VhZWU2My4u
MmM3MzI2MDY1NGJhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMTI0
LWVtYy5jCj4gKysrIGIvZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmExMjQtZW1jLmMKPiBAQCAt
MTA4NSw3ICsxMDg1LDYgQEAgc3RhdGljIGludCB0ZWdyYV9lbWNfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiAgCXN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKm1jOwo+ICAJc3Ry
dWN0IGRldmljZV9ub2RlICpucDsKPiAgCXN0cnVjdCB0ZWdyYV9lbWMgKmVtYzsKPiAtCXN0cnVj
dCByZXNvdXJjZSAqcmVzOwo+ICAJdTMyIHJhbV9jb2RlOwo+ICAJaW50IGVycjsKPiAgCj4gQEAg
LTEwOTUsOCArMTA5NCw3IEBAIHN0YXRpYyBpbnQgdGVncmFfZW1jX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJZW1jLT5kZXYgPSAmcGRldi0+ZGV2Owo+ICAKPiAt
CXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7Cj4g
LQllbWMtPnJlZ3MgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcmVzKTsKPiAr
CWVtYy0+cmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiAg
CWlmIChJU19FUlIoZW1jLT5yZWdzKSkKPiAgCQlyZXR1cm4gUFRSX0VSUihlbWMtPnJlZ3MpOwo+
ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmExODYuYyBiL2RyaXZl
cnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMTg2LmMKPiBpbmRleCA0NDEyMTNhMzU5MzAuLjIyNmQyYjE2
MDM2ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lbW9yeS90ZWdyYS90ZWdyYTE4Ni5jCj4gKysr
IGIvZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmExODYuYwo+IEBAIC01MzQsNyArNTM0LDYgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCB0ZWdyYV9tY19jbGllbnQgdGVncmExODZfbWNfY2xpZW50c1td
ID0gewo+ICAKPiAgc3RhdGljIGludCB0ZWdyYTE4Nl9tY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ICB7Cj4gLQlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKPiAgCXN0cnVjdCB0
ZWdyYV9tYyAqbWM7Cj4gIAl1bnNpZ25lZCBpbnQgaTsKPiAgCWludCBlcnIgPSAwOwo+IEBAIC01
NDMsOCArNTQyLDcgQEAgc3RhdGljIGludCB0ZWdyYTE4Nl9tY19wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQo+ICAJaWYgKCFtYykKPiAgCQlyZXR1cm4gLUVOT01FTTsKPiAgCj4g
LQlyZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwgSU9SRVNPVVJDRV9NRU0sIDApOwo+
IC0JbWMtPnJlZ3MgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcmVzKTsKPiAr
CW1jLT5yZWdzID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwo+ICAJ
aWYgKElTX0VSUihtYy0+cmVncykpCj4gIAkJcmV0dXJuIFBUUl9FUlIobWMtPnJlZ3MpOwo+ICAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmEyMC1lbWMuYyBiL2RyaXZl
cnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMjAtZW1jLmMKPiBpbmRleCAxYjIzYjFjMzQ0NzYuLmQyZWZk
MGM2NThjMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lbW9yeS90ZWdyYS90ZWdyYTIwLWVtYy5j
Cj4gKysrIGIvZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmEyMC1lbWMuYwo+IEBAIC00ODIsNyAr
NDgyLDYgQEAgc3RhdGljIGludCB0ZWdyYV9lbWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiAgewo+ICAJc3RydWN0IGRldmljZV9ub2RlICpucDsKPiAgCXN0cnVjdCB0ZWdy
YV9lbWMgKmVtYzsKPiAtCXN0cnVjdCByZXNvdXJjZSAqcmVzOwo+ICAJaW50IGlycSwgZXJyOwo+
ICAKPiAgCS8qIGRyaXZlciBoYXMgbm90aGluZyB0byBkbyBpbiBhIGNhc2Ugb2YgbWVtb3J5IHRp
bWluZyBhYnNlbmNlICovCj4gQEAgLTUxOCw4ICs1MTcsNyBAQCBzdGF0aWMgaW50IHRlZ3JhX2Vt
Y19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJaWYgKGVycikKPiAgCQly
ZXR1cm4gZXJyOwo+ICAKPiAtCXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JF
U09VUkNFX01FTSwgMCk7Cj4gLQllbWMtPnJlZ3MgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBk
ZXYtPmRldiwgcmVzKTsKPiArCWVtYy0+cmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNv
dXJjZShwZGV2LCAwKTsKPiAgCWlmIChJU19FUlIoZW1jLT5yZWdzKSkKPiAgCQlyZXR1cm4gUFRS
X0VSUihlbWMtPnJlZ3MpOwo+ICAKPiAKCkxvb2tzIGdvb2QsIHRoYW5rcyEKClJldmlld2VkLWJ5
OiBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
