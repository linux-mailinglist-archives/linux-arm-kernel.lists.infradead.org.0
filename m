Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C2B193D88
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 12:02:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8usE//yJFUUe7WSD9MeaeSaumbdErS4Oa7n2CR47yg=; b=ZYQmS3X1/Gte3i
	BO+Ic0nL0tiHNZgMBw49sLd32DAMQIpKWudEX34Mjv9soAXsgxWFLlz4lG1sWhMFs3abS7fndGoOB
	qlnhZfrtwQjUG5HvLwdc9WjxwgsLSJTaTEYF7emzwO+F5Jy4QwQXF5FbDLuYtnfY/QhODkSVqlhW6
	n+7A/cIwqTzVLejN5ktbL58+Odb9xBrV5gTq+cWQBAKY026Q2jOE48uhZdVbKd6TkbLR8thGf9zTB
	FQqwA3/War23CPHGIbapX9+K/CaNztC5q5Pue5Ko06F0eTsQFzDQinXeZHab1cuwhSDQXcnjGJyxA
	e4iv67AdOWKu6RM8hvtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQHP-00068V-EU; Thu, 26 Mar 2020 11:02:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQHD-000686-34
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 11:02:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id u10so7176645wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 04:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Wfr3mshtBQnM/CRVPTN/PuNLxJ6J3zVmMT5YCluRUKU=;
 b=LPWfvfHrcNCXNtsq0QjG6Fb5PLQf4zqNS1I4yiE3WrjMnjE7ONt6PJNZuIBHd7czBa
 ZAE9OR0Ni4Y382HuAXc0eLi78Wu5B6h12fuJFS/ys8K5tCnKPe+Svr0E6r9lwvBYUuql
 U8XsxbSR5PkoccOpge2YO/OuCK7aNjH41yqqHiRdhz0Vb2TqQsIqAgLaTFK31FiVgOIQ
 WDmw0hEC84w3vcNOJI3T20VD9K0Lmun6FvApLjBc+lpUuXQ+e1j8QGb9f4HaAahYm796
 RaF8cKKeNxOX60QSQcioWxnQoBCWHEvLt5WD6VXl5TvKxBNiFakzqkIAfTGFtE2stLNd
 L8nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Wfr3mshtBQnM/CRVPTN/PuNLxJ6J3zVmMT5YCluRUKU=;
 b=l8nE6U5UykBCJ2fZBt6tFvYtYHxJSDMkIGZeQfAvbq3HkfgIQX4AQXqhT/5LrFnhfS
 fzcvbeH3K0jcgB+oCIDE6gLbn3vyEqiQD0OTgZmmxNHTGceVCMoBThC2wgPjVnxwXz83
 SQGfEyuvhwemwQUNlDK/9lt+1qnw4Ja/DHhy61YMvn9JafW5u/IYCNAlwPgyFZ1TYx3O
 xWk3NZxcr3Lh1GI4FDckSji8Uh1w9USU7I88HcJi4kGt3vZC8Irm5O6I8OMOjX8RKbAW
 VCmKDIVZKblmBfwB5hOSJmp/MBZuCU3hpNZNH9+AC7spxng+gqAPJZBpQXRLIL1YntDI
 i7YA==
X-Gm-Message-State: ANhLgQ3/jMBWgj1+kBipufo936wtEnS5YrkLKghCe6ifm1PLPoBXBUbi
 nImcA9zx6RvXCG9SsoA9HMVR7Q==
X-Google-Smtp-Source: ADFU+vtJM2ifjt4NqZRCHSSMScdSfbUzWRVkLXVDgI6yZyq4thQ1DCTSR0RTMYpBX4xGlbTd9gzoTg==
X-Received: by 2002:adf:a348:: with SMTP id d8mr8696704wrb.83.1585220537040;
 Thu, 26 Mar 2020 04:02:17 -0700 (PDT)
Received: from dell ([2.27.35.213])
 by smtp.gmail.com with ESMTPSA id o67sm3063824wmo.5.2020.03.26.04.02.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 04:02:16 -0700 (PDT)
Date: Thu, 26 Mar 2020 11:03:06 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [RFC 01/11] mfd: Add i.MX generic mix support
Message-ID: <20200326110306.GE603801@dell>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-2-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583226206-19758-2-git-send-email-abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_040219_132734_ECD3760B 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwMyBNYXIgMjAyMCwgQWJlbCBWZXNhIHdyb3RlOgoKPiBTb21lIG9mIHRoZSBpLk1Y
IFNvQ3MgaGF2ZSBhIElQIGZvciBpbnRlcmZhY2luZyB0aGUgZGVkaWNhdGVkIElQcyB3aXRoCj4g
Y2xvY2tzLCByZXNldHMgYW5kIGludGVycnVwdHMsIHBsdXMgc29tZSBvdGhlciBzcGVjaWZpYyBj
b250cm9sIHJlZ2lzdGVycy4KPiBUbyBhbGxvdyB0aGUgZnVuY3Rpb25hbGl0eSB0byBiZSBzcGxp
dCBiZXR3ZWVuIGRyaXZlcnMsIHRoaXMgTUZEIGRyaXZlciBpcwo+IGFkZGVkIHRoYXQgaGFzIG9u
bHkgdHdvIHB1cnBvc2VzOiByZWdpc3RlciB0aGUgZGV2aWNlcyBhbmQgbWFwIHRoZSBlbnRpcmUK
PiByZWdpc3RlciBhZGRyZXNzZXMuIEV2ZXJ5dGhpbmcgZWxzZSBpcyBsZWZ0IHRvIHRoZSBkZWRp
Y2F0ZWQgZHJpdmVycyB0aGF0IHdpbGwKPiBiaW5kIHRvIHRoZSByZWdpc3RlcmVkIGRldmljZXMu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQWJlbCBWZXNhIDxhYmVsLnZlc2FAbnhwLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9tZmQvS2NvbmZpZyAgIHwgMTEgKysrKysrKysrKysKPiAgZHJpdmVycy9tZmQv
TWFrZWZpbGUgIHwgIDEgKwo+ICBkcml2ZXJzL21mZC9pbXgtbWl4LmMgfCA0OCArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2Vk
LCA2MCBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21mZC9pbXgt
bWl4LmMKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvS2NvbmZpZyBiL2RyaXZlcnMvbWZk
L0tjb25maWcKPiBpbmRleCAzYzU0N2VkLi4zYzg5Mjg4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bWZkL0tjb25maWcKPiArKysgYi9kcml2ZXJzL21mZC9LY29uZmlnCj4gQEAgLTQ2MCw2ICs0NjAs
MTcgQEAgY29uZmlnIE1GRF9NWDI1X1RTQURDCj4gIAkgIGkuTVgyNSBwcm9jZXNzb3JzLiBUaGV5
IGNvbnNpc3Qgb2YgYSBjb252ZXJzaW9uIHF1ZXVlIGZvciBnZW5lcmFsCj4gIAkgIHB1cnBvc2Ug
QURDIGFuZCBhIHF1ZXVlIGZvciBUb3VjaHNjcmVlbnMuCj4gIAo+ICtjb25maWcgTUZEX0lNWF9N
SVgKPiArCXRyaXN0YXRlICJOWFAgaS5NWCBHZW5lcmljIE1peCBDb250cm9sIERyaXZlciIKPiAr
CWRlcGVuZHMgb24gT0YgfHwgQ09NUElMRV9URVNUCj4gKwloZWxwCj4gKwkgIEVuYWJsZSBnZW5l
cmljIG1peGVzIHN1cHBvcnQuIE9uIHNvbWUgaS5NWCBwbGF0Zm9ybXMsIHRoZXJlIGFyZQo+ICsJ
ICBkZXZpY2VzIHRoYXQgYXJlIGEgbWl4IG9mIG11bHRpcGxlIGZ1bmN0aW9uYWxpdGllcyBsaWtl
IHJlc2V0Cj4gKwkgIGNvbnRyb2xsZXJzLCBjbG9jayBjb250cm9sbGVycyBhbmQgc29tZSBvdGhl
cnMuIEluIG9yZGVyIHRvIHNwbGl0Cj4gKwkgIHRob3NlIGZ1bmN0aW9uYWxpdGllcyBiZXR3ZWVu
IHRoZSByaWdodCBkcml2ZXJzLCB0aGlzIE1GRCBwb3B1bGF0ZXMKPiArCSAgd2l0aCB2aXJ0dWFs
IGRldmljZXMgYmFzZWQgb24gd2hhdCdzIGZvdW5kIGluIHRoZSBkZXZpY2V0cmVlIG5vZGUsCj4g
KwkgIGxlYXZpbmcgdGhlIHJlc3Qgb2YgdGhlIGJlaGF2aW9yIGNvbnRyb2wgdG8gdGhlIGRlZGlj
YXRlZCBkcml2ZXIuCj4gKwo+ICBjb25maWcgTUZEX0hJNjQyMV9QTUlDCj4gIAl0cmlzdGF0ZSAi
SGlTaWxpY29uIEhpNjQyMSBQTVUvQ29kZWMgSUMiCj4gIAlkZXBlbmRzIG9uIE9GCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWZkL01ha2VmaWxlIGIvZHJpdmVycy9tZmQvTWFrZWZpbGUKPiBpbmRl
eCBmOTM1ZDEwLi41YjJhZTVkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL01ha2VmaWxlCj4g
KysrIGIvZHJpdmVycy9tZmQvTWFrZWZpbGUKPiBAQCAtMTEzLDYgKzExMyw3IEBAIG9iai0kKENP
TkZJR19NRkRfVFdMNDAzMF9BVURJTykJKz0gdHdsNDAzMC1hdWRpby5vCj4gIG9iai0kKENPTkZJ
R19UV0w2MDQwX0NPUkUpCSs9IHR3bDYwNDAubwo+ICAKPiAgb2JqLSQoQ09ORklHX01GRF9NWDI1
X1RTQURDKQkrPSBmc2wtaW14MjUtdHNhZGMubwo+ICtvYmotJChDT05GSUdfTUZEX0lNWF9NSVgp
CSs9IGlteC1taXgubwo+ICAKPiAgb2JqLSQoQ09ORklHX01GRF9NQzEzWFhYKQkrPSBtYzEzeHh4
LWNvcmUubwo+ICBvYmotJChDT05GSUdfTUZEX01DMTNYWFhfU1BJKQkrPSBtYzEzeHh4LXNwaS5v
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL2lteC1taXguYyBiL2RyaXZlcnMvbWZkL2lteC1t
aXguYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAuLmQzZjhjNzEKPiAt
LS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9tZmQvaW14LW1peC5jCj4gQEAgLTAsMCArMSw0
OCBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICsvKgo+ICsgKiBD
b3B5cmlnaHQgMjAxOSBOWFAuCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+
ICsjaW5jbHVkZSA8bGludXgvY2xrLXByb3ZpZGVyLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9lcnIu
aD4KPiArI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4K
PiArI2luY2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3NwaW5s
b2NrLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGxh
dGZvcm1fZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZl9wbGF0Zm9ybS5oPgo+ICsKPiAr
I2luY2x1ZGUgPGxpbnV4L21mZC9jb3JlLmg+Cj4gKwo+ICtzdGF0aWMgaW50IGlteF9hdWRpb21p
eF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4gKwlzdHJ1Y3QgZGV2
aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICsJc3RydWN0IHJlc291cmNlICpyZXM7Cj4gKwl2b2lk
IF9faW9tZW0gKmJhc2U7Cj4gKwo+ICsJcmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYs
IElPUkVTT1VSQ0VfTUVNLCAwKTsKPiArCWJhc2UgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoZGV2
LCByZXMpOwo+ICsJaWYgKElTX0VSUihiYXNlKSkKPiArCQlyZXR1cm4gUFRSX0VSUihiYXNlKTsK
PiArCj4gKwlkZXZfc2V0X2RydmRhdGEoZGV2LCBiYXNlKTsKPiArCj4gKwlyZXR1cm4gZGV2bV9v
Zl9wbGF0Zm9ybV9wb3B1bGF0ZShkZXYpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IG9mX2RldmljZV9pZCBpbXhfYXVkaW9taXhfb2ZfbWF0Y2hbXSA9IHsKPiArCXsgLmNvbXBhdGli
bGUgPSAiZnNsLGlteDhtcC1hdWRpb21peCIgfSwKPiArCXsgLyogU2VudGluZWwgKi8gfSwKPiAr
fTsKPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgaW14X2F1ZGlvbWl4X29mX21hdGNoKTsKClRo
aXMgbmVlZHMgRFQgYmluZGluZyBkb2N1bWVudGF0aW9uLgoKRG8gdGhlIHN1Yi1kZXZpY2UgbWVt
b3J5IHJhbmdlcyBvdmVybGFwPwoKPiArc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgaW14
X2F1ZGlvbWl4X2RyaXZlciA9IHsKPiArCS5wcm9iZSA9IGlteF9hdWRpb21peF9wcm9iZSwKPiAr
CS5kcml2ZXIgPSB7Cj4gKwkJLm5hbWUgPSAiaW14LWF1ZGlvbWl4IiwKPiArCQkub2ZfbWF0Y2hf
dGFibGUgPSBvZl9tYXRjaF9wdHIoaW14X2F1ZGlvbWl4X29mX21hdGNoKSwKPiArCX0sCj4gK307
Cj4gK21vZHVsZV9wbGF0Zm9ybV9kcml2ZXIoaW14X2F1ZGlvbWl4X2RyaXZlcik7CgotLSAKTGVl
IEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzog
RmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
