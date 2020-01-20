Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B7E1425F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 09:41:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdaWNkdK7Mso18b5beg+9kFnRUU2r9w3549UiLqN5o0=; b=tcV1xYYWBhFhAC
	zV8Yo8e/YI1b1ZJG39Ui6spWy5RDBvZV/9Wr4rpNVD9kBqepxH3oJdhWwVtx7ttpTtfQBsIB8UPcQ
	ei2cX3MYBbwhW7UTltgvDyBSeZcynay0rm0t7XlgwaMqW9G8LlFALFGIyr9nP0kxyDf+6xe+hZnvS
	Xue4w2lamb2gcptd9SPNbvFCH5Y87+evZi/31GQS3Bd51jnwS2cv+k2Xd+8pgZGyqDYqE5hACrTeT
	1kMCgxyka3MzEnTuSyNoZOvA5NPxh/ii33YGVeqn1cscRUPmUSLBfvHpwklutGUDtedsW3WPt1yAa
	FOeghsbfeuuTJyzWnYFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itScN-00089Y-L5; Mon, 20 Jan 2020 08:41:07 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itScB-00088Q-0I
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 08:40:59 +0000
Received: by mail-wr1-x42f.google.com with SMTP id q6so28441539wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 00:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=YcyMDNxU6CeZD0M4XJTzTVAVqgpQcDsBZ5eIyxVur50=;
 b=hxw6Ec/TOFHL1uviTFBXvHVns2s9jWeNiGPGY/t1nMnDss7ykWrKFU5OtlWIUYN/rn
 CSz/bR6YM4gxEe17MPUqY2sokNN+JOcvbUGn2uDJDb3DIau1C1LqvB4qjiulY/yHM1CS
 d/VfmvGC8KOnS0AHEyrqYUnG1QVsZgPJcxH8+tQSNrNuhR6Cjtso48v5pIUyorrMwyrg
 VXYIFb27EiVo5/RXvhpRR1RlvZZU5jsohwFCoBsLc1fKCk9sUkeNZgw1v+m7IjsYaOo8
 nQJWeVM7a+vNKAp0AigC4Y1uuJ067vY4nlXZ2IdjfSeym3L/srI6T/cKHXIb0xUZy8jY
 gJPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=YcyMDNxU6CeZD0M4XJTzTVAVqgpQcDsBZ5eIyxVur50=;
 b=RXs3C5SHKtu8vsMC51/gv4hQuYikWccCHe5B0xtYK2Cys8UqxgpI84M8ZX+XLfzA6T
 EXry79ECjk0/oIPm2q246w6FtQdRqPkNQU+lclgkQkqM4LGE0F7NVlminq5VHUIVAErr
 Xw+ACK8juBiGeTkq0EUiFibXsSMiqtuZiOuKDQOaY2aDcpPjtxTpobg+mkG/omwgmiWX
 HRr9Z7fiG5zkEq3TxJcvzHT8jppB4eKvqP3bgIaXGiczfpFu7gmw0eRDwCJxtCFCV9t7
 IW3jdTYPqOkRh2mIdVruF8Bnqf2/C/Nx7zHrDGhiwxkCOg675Df3LgqZHWb+rtauEOil
 X31Q==
X-Gm-Message-State: APjAAAVGnZCdvlRIUwNqIlukKiv6QMDLHeIO+H6UdDhppMxDMWSELunP
 bzixnkU34fQJdw7j9SxxVu7XhA==
X-Google-Smtp-Source: APXvYqyFzecxKx1E4K2sGz5OeZKOZDc0OJZI0IE0kmHpxY+jcimDKMgxHvzb7SXw0xV4Pn/XfxamKg==
X-Received: by 2002:adf:fd0d:: with SMTP id e13mr17024029wrr.421.1579509653290; 
 Mon, 20 Jan 2020 00:40:53 -0800 (PST)
Received: from dell ([2.27.35.227])
 by smtp.gmail.com with ESMTPSA id x6sm21451676wmi.44.2020.01.20.00.40.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 00:40:52 -0800 (PST)
Date: Mon, 20 Jan 2020 08:41:08 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [RESEND 0/4] Add Support for MediaTek PMIC MT6359 Regulator
Message-ID: <20200120084108.GV15507@dell>
References: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_004055_050274_5CBC0D44 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMCBKYW4gMjAyMCwgV2VuIFN1IHdyb3RlOgoKPiBUaGlzIHBhdGNoc2V0IGFkZCBz
dXBwb3J0IHRvIE1UNjM1OSBQTUlDIHJlZ3VsYXRvci4gTVQ2MzU5IGlzIHByaW1hcnkKPiBQTUlD
IGZvciBNVDY3NzkgcGxhdGZvcm0uCgpUaGlzIGlzIG5vdCBhIHByb3BlciBjb3Zlci1sZXR0ZXIu
ICBQbGVhc2UgdXNlIHRoZSBjb3JyZWN0IGZvcm1hdHRpbmcsCndoaWNoIGNhbiBiZSBwcm92aWRl
ZCB0byB5b3UgZm9yIGZyZWUgdXNpbmcgYGdpdCBmb3JtYXQtcGF0Y2hgLgoKLS0gCkxlZSBKb25l
cyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDi
lIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vi
b29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
