Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6261F86D1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 06:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xsr1OzT5nN40INvuRXCAjP6roH0uXH5UOpRo6q1S8Sg=; b=otLKX/hX3htheQBFea1VzSlBfR
	9E8F1mOx952qrRPuXuVAIX70XE1mXFwCjtcMIRIasURVk6si0OwMWBWswHJopSZ3Epip/TZcq+99M
	EYZfCJND6YEooSYyLH92iRCeri3WM0rbEBSizYWJlBeUlEiDtBYnGDvmiUonQhfiGqK8IftqfM5zt
	drBIyp86VWScjAEKQYqfop1cL9cHRMu90I8NRkNaZn96Zm14Jk7vox4WSNY5GixFvkLQ/BfIcndH4
	lvHTlV35xgvjhT/1lW10bR+W9XgKjSBHK2ZCvlVS/vAMb1qyNogctV38UN/ECcLjRgC0lQADlewnT
	7pqYfPqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkKXg-0000Qt-Nk; Sun, 14 Jun 2020 04:46:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkKXW-0000Pu-6H
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 04:46:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id h10so2381102pgq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=RWwMRynk2fWdB68I9OsS843xaUuoJpG9P0IWOTWPIPQ=;
 b=kFyvHa5/Bsyox+RGrqADQP+tdG3Ar2RdEnYxAto7xASUR/5jWsX3IWuPdu/ez9RjTA
 8TUqZoC00mnsm7jnmmPTrn/FTcdiOQhLc9AdtxapTewBI7ZEyX52Fo9t2dPWf6Pzg6CO
 cVgsqgc0M+G5Z8kuMgIyzws5RN9ixB/vccDV8ko1JwVMr8nJyWP4iTGWVJHyrbDLbmJG
 Mv47x7rcNlSI5oIkiyCZ7A9cjQR2zstmxz26Bv8jL8zuuD7SJJUSKYx2JHuK9K0BLMq7
 gPeRRC09ftYu7ZILInNJLWdSMHo4cSEPAsAZ7S3yiCADTsyDXLIUYH1lLWiWJvMt1TQp
 rOEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RWwMRynk2fWdB68I9OsS843xaUuoJpG9P0IWOTWPIPQ=;
 b=tyuIxAIPWARkliE3HXo5/aaNduadJRPduoE0K7CV3p0AWlIgHBuxOs5yNpySgB9/f2
 +th6G/YWwlrCmFDeStGNpXUr9fXGK31aEYk/tMF358PnGviCg3EYF/80eWtpGmINcNgm
 M15/vG3GQa/yJ/rszKLUYERMt/FODYvaNbRDlEkyxdYICiG+NAs2yy4G6EJirNwKAT/m
 Jk3ywXQ7fZRZT88SySE7l9ipxtgy/U1mD81T5HN4FHBsVFOrVPuArKLwf2yCxpskJYdP
 CVqRmie8rOENgER2mIBnX04XtgXT0tiJM7njfOTEd8fEATjXSZUgixXgzAK5uk9EQ3dr
 Vn/A==
X-Gm-Message-State: AOAM533IAQQR1hcf+rolCL2Y9ZizzFQv64yGYuDfsjGA/ljBoCqVYFrY
 an1MAI6k5QVEyaWGPCbRMKYEKhIR
X-Google-Smtp-Source: ABdhPJyIL+FOuFErMkqtDiiJShhFGy6HX+YtfYQkkmfnuFY+L1cs+L9rQwTXj9KW7DAQ5VjsLj7zrQ==
X-Received: by 2002:a63:5f11:: with SMTP id t17mr16163082pgb.177.1592109997105; 
 Sat, 13 Jun 2020 21:46:37 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 131sm8727305pgf.49.2020.06.13.21.46.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 13 Jun 2020 21:46:36 -0700 (PDT)
Subject: Re: [PATCH v4 4/9] mips: bmips: add BCM63268 power domain definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
 <20200613082140.2009461-5-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a3fc149d-f2ed-bae9-4737-6f4d52025e6f@gmail.com>
Date: Sat, 13 Jun 2020 21:46:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200613082140.2009461-5-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_214638_227469_DB8A3233 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

CgpPbiA2LzEzLzIwMjAgMToyMSBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEJDTTYzMjY4IFNvQ3MgaGF2ZSBhIHBvd2VyIGRvbWFpbiBjb250cm9sbGVyIHRvIGVuYWJsZS9k
aXNhYmxlIGNlcnRhaW4KPiBjb21wb25lbnRzIGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCj4gCj4g
U2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNv
bT4KClJldmlld2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxGLmZhaW5lbGxpQGdtYWlsLmNvbT4K
LS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
