Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD161EE568
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wfh/G2rtkBmJfJaQNcGR6YPWed7P3CR790ReLzoUDKU=; b=BtPvW2AZ9J6yRe8MgUttcefkv
	HHDSOg7X8qlScc8n55+J6e9Mh8zirx17HNDVMMkPfLtQrcnj1VITOZb2WicPFQIZ1RDj4cLaafDBS
	l9w0yky8idex1q+Qce2s2fYVaqtqdGNXJ372WEyh5cGZQ+5HRfGSTxo3lCVQpGJ0GvAMNy9yZ9ylI
	2ghEMTKT3MMo2H/EUXeQUpI/wWGKr+GG2sTQ1YWjZqFWm/SOSQpgAmiU72fY0zG7ER1Aq8Lk3Dite
	eFC+FrwFA4GVktYg7BEPaY79as66ISDh4SLX7SgLGjirXVG2of07kD4QwoQ1kAXrrf9fJiSBcBAb8
	os7GoMQ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgq08-00009z-1I; Thu, 04 Jun 2020 13:33:44 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgpzy-00008a-F8
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:33:38 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a45so2198111pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 06:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=RAV9/dNL++xiGiHR5A9Oc9TEhWA76VZjoAgyK161SVY=;
 b=zPMPr/YxyP3965QTpRI2+WUxZFPPhZUrUCBk07JsMf7SI3dYonyONF/w0DXsy+H5hG
 o/oJJjSdmpLtc+dJQvwp1leBctiT2Vq3wT+tqHFjb6xHMsfoWEaS9zvqmiv6i6Kypmcz
 NuPrUukPkRrFI2m5XEndHGed2uTmcHb8pnRTofbn4DegJcnfjQFGe7zPoyuv2QGsXbWh
 HH8bumkNPHc1m7ilS8Jcj/cIvN+irGawDlQl1LsOKy9ICdejCXO3r2FVOYnWv/nVXOPx
 WfGKGP7iB52c9x+wjbCYhrs/rUdGBBvxGsKjhZBtuKFDffKB+jr+YPAY9FHogJdNolMo
 B2Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=RAV9/dNL++xiGiHR5A9Oc9TEhWA76VZjoAgyK161SVY=;
 b=diXHie9g3lApoOir4c2kbyEiLdoJOwt4iJGbOPqnKCySvqCk5Hl0E59/9ovWb27/9u
 uKtaBUd0Hl0nuiCwOcnJ7bNfD6kiKtBOUqoTRY9JOebglOq1keAUHel64FaSTVw9U5RY
 CNwZuu/wKacxjiBRNekJMtLNxFytnYkh8Y6WdrsfjBRX/bDAwiMVTaeRVoHDbJmhvHnm
 PqBhw/5tIzJrjo0VNI5eImLBd6g+orL3dSk9uIkbDaGu6p2fpS6YTNdyMszGQ81V2NX4
 pVhGBaozUi09TN2daRpYUAG95JjQtPAuyyWrhQjMK5E4JKfD6fed5bi2ex1m1tBGI8FU
 rCJQ==
X-Gm-Message-State: AOAM531UVVFWb6sQ8E9zeS/z90GnVMA81JWH1F0jpzOddNShn7XT1DzK
 SVewAfl3qosSrGarGU89s4yqOlY1rDnJMA==
X-Google-Smtp-Source: ABdhPJyHAP7hdkjk0QRqpIxnyq/8FeJd16IwaXCeqaVfm7NZUPFQxKr/IxN2WFjd4DugkV/BUTo0Ew==
X-Received: by 2002:a17:902:7d85:: with SMTP id
 a5mr4997837plm.106.1591277612461; 
 Thu, 04 Jun 2020 06:33:32 -0700 (PDT)
Received: from [10.158.2.42] ([45.135.186.31])
 by smtp.gmail.com with ESMTPSA id y6sm5569040pjw.15.2020.06.04.06.33.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 06:33:31 -0700 (PDT)
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
To: Bjorn Helgaas <helgaas@kernel.org>, Joerg Roedel <joro@8bytes.org>
References: <20200601174104.GA734973@bjorn-Precision-5520>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <779f4044-cf6a-b0d3-916f-0274450c07d3@linaro.org>
Date: Thu, 4 Jun 2020 21:33:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200601174104.GA734973@bjorn-Precision-5520>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_063334_538964_959F463B 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-acpi@vger.kernel.org, Wangzhou <wangzhou1@hisilicon.com>,
 linux-crypto@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, kenneth-lee-2012@foxmail.com,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLzYvMiDkuIrljYgxOjQxLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+IE9uIFRodSwg
TWF5IDI4LCAyMDIwIGF0IDA5OjMzOjQ0QU0gKzAyMDAsIEpvZXJnIFJvZWRlbCB3cm90ZToKPj4g
T24gV2VkLCBNYXkgMjcsIDIwMjAgYXQgMDE6MTg6NDJQTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPj4+IElzIHRoaXMgc2xvd2Rvd24gc2lnbmlmaWNhbnQ/ICBXZSBhbHJlYWR5IGl0ZXJh
dGUgb3ZlciBldmVyeSBkZXZpY2UKPj4+IHdoZW4gYXBwbHlpbmcgUENJX0ZJWFVQX0ZJTkFMIHF1
aXJrcywgc28gaWYgd2UgdXNlZCB0aGUgZXhpc3RpbmcKPj4+IFBDSV9GSVhVUF9GSU5BTCwgd2Ug
d291bGRuJ3QgYmUgYWRkaW5nIGEgbmV3IGxvb3AuICBXZSB3b3VsZCBvbmx5IGJlCj4+PiBhZGRp
bmcgdHdvIG1vcmUgaXRlcmF0aW9ucyB0byB0aGUgbG9vcCBpbiBwY2lfZG9fZml4dXBzKCkgdGhh
dCB0cmllcwo+Pj4gdG8gbWF0Y2ggcXVpcmtzIGFnYWluc3QgdGhlIGN1cnJlbnQgZGV2aWNlLiAg
SSBkb3VidCB0aGF0IHdvdWxkIGJlIGEKPj4+IG1lYXN1cmFibGUgc2xvd2Rvd24uCj4+IEkgZG9u
J3Qga25vdyBob3cgc2lnbmlmaWNhbnQgaXQgaXMsIGJ1dCBJIHJlbWVtYmVyIHBlb3BsZSBjb21w
bGFpbmluZwo+PiBhYm91dCBhZGRpbmcgbmV3IFBDSSBxdWlya3MgYmVjYXVzZSBpdCB0YWtlcyB0
b28gbG9uZyBmb3IgdGhlbSB0byBydW4KPj4gdGhlbSBhbGwuIFRoYXQgd2FzIGluIHRoZSBkaXNj
dXNzaW9uIGFib3V0IHRoZSBxdWlyayBkaXNhYmxpbmcgQVRTIG9uCj4+IEFNRCBTdG9uZXkgc3lz
dGVtcy4KPj4KPj4gU28gaXQgcHJvYmFibHkgZGVwZW5kcyBvbiBob3cgbWFueSBQQ0kgZGV2aWNl
cyBhcmUgaW4gdGhlIHN5c3RlbSB3aGV0aGVyCj4+IGl0IGNhdXNlcyBhbnkgbWVhc3VyZWFibGUg
c2xvd2Rvd24uCj4gSSBmb3VuZCB0aGlzIFsxXSBmcm9tIFBhdWwgTWVuemVsLCB3aGljaCB3YXMg
YSBzbG93ZG93biBjYXVzZWQgYnkKPiBxdWlya191c2JfZWFybHlfaGFuZG9mZigpLiAgSSB0aGlu
ayB0aGUgcmVhbCBwcm9ibGVtIGlzIGluZGl2aWR1YWwKPiBxdWlya3MgdGhhdCB0YWtlIGEgbG9u
ZyB0aW1lLgo+Cj4gVGhlIFBDSV9GSVhVUF9JT01NVSB0aGluZ3Mgd2UncmUgdGFsa2luZyBhYm91
dCBzaG91bGQgYmUgZmFzdCwgYW5kIG9mCj4gY291cnNlLCB0aGV5J3JlIG9ubHkgcnVuIGZvciBt
YXRjaGluZyBkZXZpY2VzIGFueXdheS4gIFNvIEknZCByYXRoZXIKPiBrZWVwIHRoZW0gYXMgUENJ
X0ZJWFVQX0ZJTkFMIHRoYW4gYWRkIGEgd2hvbGUgbmV3IHBoYXNlLgo+ClRoYW5rcyBCam9ybiBm
b3IgdGFraW5nIHRpbWUgZm9yIHRoaXMuCklmIHNvLCBpdCB3b3VsZCBiZSBtdWNoIHNpbXBsZXIu
CgorKysgYi9kcml2ZXJzL2lvbW11L2lvbW11LmMKQEAgLTI0MTgsNiArMjQxOCwxMCBAQCBpbnQg
aW9tbXVfZndzcGVjX2luaXQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgCmZ3bm9kZV9oYW5k
bGUgKmlvbW11X2Z3bm9kZSwKIMKgwqDCoMKgwqDCoMKgIGZ3c3BlYy0+aW9tbXVfZndub2RlID0g
aW9tbXVfZndub2RlOwogwqDCoMKgwqDCoMKgwqAgZndzcGVjLT5vcHMgPSBvcHM7CiDCoMKgwqDC
oMKgwqDCoCBkZXZfaW9tbXVfZndzcGVjX3NldChkZXYsIGZ3c3BlYyk7CisKK8KgwqDCoMKgwqDC
oCBpZiAoZGV2X2lzX3BjaShkZXYpKQorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwY2lf
Zml4dXBfZGV2aWNlKHBjaV9maXh1cF9maW5hbCwgdG9fcGNpX2RldihkZXYpKTsKKwoKVGhlbiBw
Y2lfZml4dXBfZmluYWwgd2lsbCBiZSBjYWxsZWQgdHdpY2UsIHRoZSBmaXJzdCBpbiBwY2lfYnVz
X2FkZF9kZXZpY2UuCkhlcmUgaW4gaW9tbXVfZndzcGVjX2luaXQgaXMgdGhlIHNlY29uZCB0aW1l
LCBzcGVjaWZpY2FsbHkgZm9yIGlvbW11X2Z3c3BlYy4KV2lsbCBzZW5kIHRoaXMgd2hlbiA1Ljgt
cmMxIGlzIG9wZW4uCgpUaGFua3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
