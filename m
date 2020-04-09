Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A071A3D0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 01:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7wXaJV/EiDTD1dRRS4b+QUQ8tz7Vp80mabVD52elEU=; b=XEtaW1fD9nSD6r
	KUsGBjT5Yjcqb8O5ulCfFc4PBbLgY57fujdTgmTUQQADAaH39AvZY7M03S9Ok3WRUnXGS/urMkgPg
	P2DjnlQjJ+/ySXsK3j0kDkdrpAfmmVfq0eXPNUW88Vaufu3i0fCAl7EOk8VRTYjWnRtFC9YdgshfB
	0vGDeNiz5TOdp/gKY53Geqv9MHDngdLkPTQmVUnE96vc1iKpGU3z86eHIYG2zRqXQGynCzh/6rVXU
	DnLQ97kCPI4ibSgH1ZE/9LucO1oxmeOcEaHka1Rw3Tc7L/oa4obnXz0pvOR4CnqPym24PH2/jBtnD
	adN3c9tPa0MLN7Coi0dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMgqR-0006Nh-UK; Thu, 09 Apr 2020 23:44:27 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMgqL-0006NO-5y
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 23:44:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id m8so391020lji.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 16:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eplP7HigK8Ewza+SjO81i9tb9swgjSdpeTM2vE+t2FI=;
 b=Z+OFqTSEtWD+OR0/pzr+dM8ugXHWeikyhxm/KgbzcPr0hpv7bgSSKGq1REFh393r9Y
 +cjiNaten3HWmd7TxIHO3zqw54SrSOcpfrZFCIrd6ZPeX8z3tuYZGZybmwKgVsYzYMZv
 eaHQahH+nMqmL8ymsrSYu0pUiacrioYnJ+jb4B6zLDyFv07S2Qenm395qW5Z3Ua0fx6y
 zL6ESY9Mh8/zrOc1NJEE1+dZEp9WaL/bG8glG3/JD0+fyAPuMQSuHsCUVj0MRqVMxj9o
 VmddSw5J9OruFahcTsOUaNrxs4X1GoXvMZIfHrSbUf+tKQtQIkzoFZvCZDQ5jUc14PLx
 nViw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eplP7HigK8Ewza+SjO81i9tb9swgjSdpeTM2vE+t2FI=;
 b=Mven17/isst9MrF+pZyKVw7PW45JISy6cZ1LbnY3BLgX/zSUOZapgRnWKuPqsYCD6c
 J7XX3q4Xm6R/9ntDZFVlBRWhatNzRT773eF+oS0RDAGOLtr/Hs9AdP9KhjRfh1mtpuCZ
 9YN5yXijS8n9VK67K4o0SzrEAiBMZYb1u9CfpI1I0Gvk7UL1i92uMAntKz4O/PVKfpFc
 PCYdrTiezk1byL2/onLJ9pPEZSeW+L7zk4Pg4HxN1ZTIL6OYSod9TkblJEx64RS3y+wz
 OraYq2coyZtj8wClQD/bpisvd57e4ELXBqJAg8EQ1Av5YlSRB0JuOk+C1Pq5LXK6Y1Tq
 pYSQ==
X-Gm-Message-State: AGi0PualUq4AZQYSCBR4Ro96Jt1Ox6kLLrfvFmwa9zKfHnDE1RBeBtRK
 HD4vzHRdHVExOA5vmRGmNZDG6M4Z
X-Google-Smtp-Source: APiQypKOjhusE3Y7SNrXp1CXEoE/mqfoQN6rYgf5UIc2VAPmQ3PefCXTqRsbwrmhttzvDhBHDOpurA==
X-Received: by 2002:a2e:8511:: with SMTP id j17mr1356714lji.292.1586475858785; 
 Thu, 09 Apr 2020 16:44:18 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id 64sm283254lfh.32.2020.04.09.16.44.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 16:44:17 -0700 (PDT)
Subject: Re: [PATCH v6 11/14] memory: tegra: Support derated timings on
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-12-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <7f23f140-4c56-3d9a-946e-f29bc569f40c@gmail.com>
Date: Fri, 10 Apr 2020 02:44:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-12-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_164421_243803_AE440723 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4gIAl0ZWdy
YTIxMF9lbWNfZGVidWdmc19pbml0KGVtYyk7Cj4gIAo+ICsJY2QgPSBkZXZtX3RoZXJtYWxfb2Zf
Y29vbGluZ19kZXZpY2VfcmVnaXN0ZXIoZW1jLT5kZXYsIG5wLCAiZW1jIiwgZW1jLAo+ICsJCQkJ
CQkgICAgICZ0ZWdyYTIxMF9lbWNfY2Rfb3BzKTsKPiArCWlmIChJU19FUlIoY2QpKSB7Cj4gKwkJ
ZXJyID0gUFRSX0VSUihjZCk7Cj4gKwkJZGV2X2VycihlbWMtPmRldiwgImZhaWxlZCB0byByZWdp
c3RlciBjb29saW5nIGRldmljZTogJWRcbiIsCj4gKwkJCWVycik7Cgo+ICsJCWdvdG8gZGV0YWNo
OwoKSSB0aGluayBpdCdzIG5vdCByZWFsbHkgd29ydGh3aGlsZSB0byBmYWlsIHdob2xlIEVNQyBk
cml2ZXIgYmVjYXVzZSBvZgp0aGUgZmFpbGVkIENERVYuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
