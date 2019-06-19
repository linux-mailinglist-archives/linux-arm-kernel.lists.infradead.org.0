Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B36E34B189
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 07:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzmtYIod2m2Fjsai0JkeymqkpHKo6Yz2OtMqLWuqs/0=; b=sjHTLssToOfmBc
	hgk4oCF4f6vUHFF8kA0jjeH7GnXIEC7EsoOoNgSyCBoz/X+b/BCbWL8wCP9HsYmZeoQ73zD+pPwsB
	fq88HW6FdSLOzLiXHr2mUYb2dkUidbjFE7H7+2DFZstdY7D/Wz5s9ujbSOUQ3D6cM79jjRb8cUh0Y
	gBTB4FP+4tweuPh+Fng0g9k5Bjug2E1Vl4YYQAUNnj5bfKyfP93gbkV+R8+xc3EoeIJK4L/Cba7e0
	X1IKU6MgzRn6XMtEkFoymkNbIi7UvehIy2vnnTEmdwC7K8DsKeO9x+xVEhV+/nkMAV3f4tYLjH3om
	qthVK95FQjKDR/CcMwLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdTMn-0007fz-Mt; Wed, 19 Jun 2019 05:42:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdTMb-0007f0-Q5
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 05:42:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id 207so299234wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 22:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=/cpf3zq+TFw4UEIBZS68FxYFecgYH1xkj5zf5lev0W8=;
 b=cCHl/gxL/zXc4WXMsveXwVsU3cxUW+ACFRX97VZSnWNLVolF18pOwLb4cZ5wfy5RnJ
 3REAqJcFK/oGI2QJKcdjOZzJo77brsZ933bk0GZFC6Yb2FeFRu/ZUcdxus4jSMt5QMmv
 cb5mKHlWsJqPkUdz1B5NnEwJWJoHUrL5L43sT51FshRXu6kSGA18KFYUDbdIq3gciajm
 RcT5NEUePlSW1DD27FCL//Db+0LRRjSYEJXPvbTgus3ZYx7ERKnhVKaedqbEpQlbN+J+
 As7P0XNVfOhDqFB3DaVhv4y3AmIyWNhEna4XviYfA0OCDgHVzB72f+z0351/UGM/LxtR
 RG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=/cpf3zq+TFw4UEIBZS68FxYFecgYH1xkj5zf5lev0W8=;
 b=Y+myNnJ2yHrgYYvJzNfxcaGuULtZjhuXMBu22Ch5t2pMNO0oE+iI886DikvrroNwT1
 Wh2x3x/hwHwAJDTh8lZ9c6DJQqOcMh7JFgtVhpCDq7m+wq4n4Q/TZBAlOrTxPv20A2+Q
 ZfL6rSw9nw2fTxYk3k1Ri1e2sPoLB5RuCYzS4PhhP7sjb3rWfZoaWBLNW5tn8UxzYNuH
 4yBpiIig9PLMKzjGxqL3JSRne+AaAQ6qmvbUuLhm7TX5gKcQ3UT6VqgWcqFIV1qZ6+Y4
 HRG/UCYTTV0QjJ6Y/fLJSOUhyKMFBsqJmBtkQT6QAZ6bpt7p8GaJqJOLIN3idYeLSr+6
 V40Q==
X-Gm-Message-State: APjAAAWwS0yycrNfQ6uYtf3V+vswtlwIII0dbtc9hl90pDSnW96zv6MX
 d7sy1skQaKkrKxPRi8db/CTMdQ==
X-Google-Smtp-Source: APXvYqz1GbEe2qolDZxYNYoUdvQZ5fsE8k6qQo1nlTIumvRmIvonzAOQdnQDSY6CuatAS38KNkwUlw==
X-Received: by 2002:a1c:6c0a:: with SMTP id h10mr6205898wmc.40.1560922945130; 
 Tue, 18 Jun 2019 22:42:25 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id u18sm293652wmd.19.2019.06.18.22.42.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Jun 2019 22:42:24 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:42:22 +0100
From: Lee Jones <lee.jones@linaro.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH 1/1] scsi: ufs-qcom: Add support for platforms booting ACPI
Message-ID: <20190619054222.GE18371@dell>
References: <20190617115454.3226-1-lee.jones@linaro.org>
 <yq1zhmeuvst.fsf@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq1zhmeuvst.fsf@oracle.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_224229_849622_E5B88D4F 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-scsi@vger.kernel.org, avri.altman@wdc.com,
 linux-arm-msm@vger.kernel.org, jejb@linux.ibm.com, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, agross@kernel.org, alim.akhtar@samsung.com,
 jlhugo@gmail.com, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXJkLCBNYXJ0aW4sCgpPbiBUdWUsIDE4IEp1biAyMDE5LCBNYXJ0aW4gSy4gUGV0ZXJzZW4gd3Jv
dGU6Cj4gPiBOZXcgUXVhbGNvbW0gQUFyY2g2NCBiYXNlZCBsYXB0b3BzIGFyZSBub3cgYXZhaWxh
YmxlIHdoaWNoIHVzZSBVRlMKPiA+IGFzIHRoZWlyIHByaW1hcnkgZGF0YSBzdG9yYWdlIG1lZGl1
bS4gIFRoZXNlIGRldmljZXMgYXJlIHN1cHBsaWVkCj4gPiB3aXRoIEFDUEkgc3VwcG9ydCBvdXQg
b2YgdGhlIGJveC4gIFRoaXMgcGF0Y2ggZW5zdXJlcyB0aGUgUXVhbGNvbW0KPiA+IFVGUyBkcml2
ZXIgd2lsbCBiZSBib3VuZCB3aGVuIHRoZSAiUUNPTTI0QTUiIEgvVyBkZXZpY2UgaXMKPiA+IGFk
dmVydGlzZWQgYXMgcHJlc2VudC4KPiAKPiBBcHBsaWVkIHRvIDUuMy9zY3NpLXF1ZXVlLiBUaGFu
a3MhCgpJZGVhbC4gIFRoYW5rcyBmb3IgeW91ciBoZWxwLgoKLS0gCkxlZSBKb25lcyBb5p2O55C8
5pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdp
dHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
