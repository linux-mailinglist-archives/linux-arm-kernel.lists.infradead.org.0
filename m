Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8F81AD83B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 10:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYcLoWy3cx/P/j/vIonQ0Ni1ko6an8Gp9k2+mJWAZRU=; b=L0hJFcuR5rZCBS
	q5OXJDbwenm4L8II6F48ZxJSgG2nQJm1ceMxnYbPZMZ9xds6DU3shFtWYu42gN/bNwO/zj0ESDdTX
	Jfo97iVrWbrMkVZbbS16u9E8PQuMHO/d6m1dAuGsS9TYqnxdfTFjUgB9LyXOzUvZz4/nroYLatZJH
	dzodgP+qOoeYV9rvL4sN8rfXtXXZOywngcRehATxebvVffz62kUXUSepUlytd0ApZXZZGu7q14QZr
	InB+XvVKcH53OB3IV3FGwj68ljG9xrc9Ili+kvECvkRnU2hXr2WZbLF+Um+hBQloIpkyGIO/FjsH5
	KPkVXuOPCYro9EiqHbkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPM1e-0001ag-UB; Fri, 17 Apr 2020 08:07:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPM1R-0001Va-V1
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 08:06:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so1950480wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 01:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=zdfOAuP7fyaW1ZeVyULlmT33DOYYP23f5Q8B9QajRJM=;
 b=hp61XEm/FGok8REvT3T074Wd8aZs0iWy57mOLbwQwMZJ4fXWTGHB/uBLrS8uABZB3z
 Ge7AjEe0ea/LPcRsyDaoj/3SfsO+9XJcvLBt2V2lO7eTmMbrwX4gbP8tTy4OGWFKZkI2
 el7svo/333VhxnyuleH4Bapz6a8oBvZ/lg3gRvR2n6JYFcwRzqo3/emiEUzSEVoO+QiB
 qrM9tDaFGqLxLgCp8DOxZU14nAeEJEXQTsWlxOfhVbYbvjpZu5h6KD9pVAviyer7rwGK
 K/uKTz/NJFf5MyvXRJ0d40YR+HD+RuwPDysK0i9kmNDFGi0SVvEW3NF/wRwSEm099Cxj
 YIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zdfOAuP7fyaW1ZeVyULlmT33DOYYP23f5Q8B9QajRJM=;
 b=uFDaQXjOTtw0Gv/1mOO+S4sr+sQClfHfWkSkWMhDB2puv4WvG5sfsk/eQFIzfFH63O
 9jr3Yn0gCsTmbVxqx/6tTq70fdzmhDF6n0Ww4T2uWlkSuKmh2dzL3f27/aq3oo01Bf8l
 SPmP1I+DOvApU09gOOAWG6tvNRKgueA7HsJFuJa8KPD68rqjcLgYbk1m1PdKWqx7UNf9
 Ul0wr8+i6A9ghur2bKpphE9q8zzjhnvIDZ3qbQVJllx/jkDVcGI3FkB5DxZZToKF2aXn
 lWzQaAqUmBtp22fCCgCj2hsbe7f2cRUvJ3RS3/FmVO4U68BAgMJWef7fBpMzqNchd5oK
 9lUw==
X-Gm-Message-State: AGi0PuYgL/jItD6JZrKd7eMN1SGLElKQDgsTiGmjWIXTQubwhQPK2hmq
 Eux9Ssz629DSdJR022eGrNy8uw==
X-Google-Smtp-Source: APiQypIr5rhPvU7gLyvcYwjnpws074PfDg+NI0F7JmZjX82UBiLQKJtlQDYychc2ykdFgdc5xHfxmQ==
X-Received: by 2002:a7b:ca54:: with SMTP id m20mr701534wml.45.1587110807651;
 Fri, 17 Apr 2020 01:06:47 -0700 (PDT)
Received: from dell ([95.149.164.124])
 by smtp.gmail.com with ESMTPSA id u7sm7245869wmg.41.2020.04.17.01.06.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 01:06:46 -0700 (PDT)
Date: Fri, 17 Apr 2020 09:07:47 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH v3 01/13] mfd: Add i.MX generic mix support
Message-ID: <20200417080747.GE2167633@dell>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
 <1586937773-5836-2-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586937773-5836-2-git-send-email-abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_010650_524614_82F54C41 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxNSBBcHIgMjAyMCwgQWJlbCBWZXNhIHdyb3RlOgoKPiBTb21lIG9mIHRoZSBpLk1Y
IFNvQ3MgaGF2ZSBhIElQIGZvciBpbnRlcmZhY2luZyB0aGUgZGVkaWNhdGVkIElQcyB3aXRoCj4g
Y2xvY2tzLCByZXNldHMgYW5kIGludGVycnVwdHMsIHBsdXMgc29tZSBvdGhlciBzcGVjaWZpYyBj
b250cm9sIHJlZ2lzdGVycy4KPiBUbyBhbGxvdyB0aGUgZnVuY3Rpb25hbGl0eSB0byBiZSBzcGxp
dCBiZXR3ZWVuIGRyaXZlcnMsIHRoaXMgTUZEIGRyaXZlciBpcwo+IGFkZGVkIHRoYXQgaGFzIG9u
bHkgdHdvIHB1cnBvc2VzOiByZWdpc3RlciB0aGUgZGV2aWNlcyBhbmQgbWFwIHRoZSBlbnRpcmUK
PiByZWdpc3RlciBhZGRyZXNzZXMuIEV2ZXJ5dGhpbmcgZWxzZSBpcyBsZWZ0IHRvIHRoZSBkZWRp
Y2F0ZWQgZHJpdmVycyB0aGF0Cj4gd2lsbCBiaW5kIHRvIHRoZSByZWdpc3RlcmVkIGRldmljZXMu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQWJlbCBWZXNhIDxhYmVsLnZlc2FAbnhwLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9tZmQvS2NvbmZpZyAgIHwgMTEgKysrKysrKysrKysKPiAgZHJpdmVycy9tZmQv
TWFrZWZpbGUgIHwgIDEgKwo+ICBkcml2ZXJzL21mZC9pbXgtbWl4LmMgfCA0OCArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2Vk
LCA2MCBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21mZC9pbXgt
bWl4LmMKCkZvciBjb21wbGV0ZW5lc3MgLSBBcm5kJ3MgcmVwbHkgdG8gdGhpcyBwYXRjaDoKCiAg
aHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbGludXgtY2xrL21zZzQ3NzAzLmh0bWwKCi0t
IApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxp
bmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGlu
YXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
