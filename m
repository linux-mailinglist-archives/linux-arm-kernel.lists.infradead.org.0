Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D658D80F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 22:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mybk9BvzKCRFQlQD1prFcdqgbsRVOXN+trBeC7c9n0s=; b=eY0GeiLpxQ0teB
	tZAQZn2jpPxO3eP02Vlwr5VnIYzLyrJp/I54TVfp14lEYt6lbyXHMpq+EZBBUiIfLJhsXGXRLIWZ3
	KnQxVZBJZwiRqrnSSohkTZz+g7/WkhBBRSBGr/wwpqPLOp6MModW2nn2nSsvfnJ/wKgDd4rxlsLZX
	KAOiSqLY5X+lWmtXGmczPt7pcOBfvxK5XRvqgMaTgmBMOBcx/8T3tXr0l/ePmLhLboTXW6LOhX3jk
	ySA5wTwPPSxU6cXW73BVrMdyeI2X3q2mEwn114rtc1C8+FAudB/1W8pE3lYmqQTR8jQKJoltykVz4
	BBkQ1H9G9f3yXU7Vv1FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTOq-0005AC-My; Tue, 15 Oct 2019 20:26:32 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTOc-00058y-Mx; Tue, 15 Oct 2019 20:26:19 +0000
Received: by mail-ed1-x544.google.com with SMTP id h33so19299966edh.12;
 Tue, 15 Oct 2019 13:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dK3t9AxAtDqpmJRfjX81BITOjcQhY9SeVbBfeMuALZ4=;
 b=mZIQzB/PTEGfdZOyUPws2dWuOFpjB3wfSVVLSfgTbo2xLkMfjOTvL1yjasjGVEla6W
 yBCv4O4PayyPJ5o7mwhHBEv96UuapbXXeP69kIm3LjobI6e5uJouQXpe36oK1Mp2ZH7Y
 kyH6Hk7sJKEdZ4SEyMxZw2aDEEVewW5H3RKxMeS4WkdbYJ0zCoZ4xY+/rZeIYVTyU90e
 Mun9bLBYyGXNWA8vr3ZKlRxX3ZJB2YNrQpoxyNFR2eCyggDQ0TZ7MJq2H8AwYE1zxbNL
 FBZcKEwRwq6kR0zoG9pJQ9n7FDWBd+4GOi+yNBVOhy1Krf3K6JlxFR0yeJJseNmlZOV1
 3i/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dK3t9AxAtDqpmJRfjX81BITOjcQhY9SeVbBfeMuALZ4=;
 b=e2wzlHfIMbO1iq5YTJ1W5TmcmNmJBkof98DszGK99ZL/XCdaGtpSnRCPRaMtYIvsW3
 x4Oakp148ETHYFxJHD8+f5YTd5KjJdeFl6UQgeC/zlYY02SW/cDWdnr897sEjDQauH2y
 6ALZL1BvgG6hU+L90oiJ9ZvuGsAZD1VZ2cUHj+pwJ8sUMqETQqp/WLs1pOtKnUIRP3r4
 cIG70Bk0cH107Z9F9S5sGHRcEs97jfi0AM+4fR28n44eqa6FlOU2Nk5e+lL6GfGCdjTk
 1Vs8QRZewYTlqajxZkzEnjjAY8zIZEEbyDTZmdTRINeWzgqg2zR739yNuLsrntG46y9W
 QXbA==
X-Gm-Message-State: APjAAAUR+Sa4YMkxzzWJWvCRt8KMAR+XPJl25vLhudlztjfrjC8uUDV0
 n+FdXDBXKyJ4pKmF7thNZHEj4VSN
X-Google-Smtp-Source: APXvYqzZfaog4m4XbjIi4VxCNQ4ywbycZoYkr4l2X5kIUkDKB5zTCm1Zz13b3xqBJ1L9KBMrpi+TvA==
X-Received: by 2002:a05:6402:557:: with SMTP id
 i23mr35269304edx.71.1571171177323; 
 Tue, 15 Oct 2019 13:26:17 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a36sm3909355edc.58.2019.10.15.13.26.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 13:26:16 -0700 (PDT)
Subject: Re: [PATCH 2/2] include: dt-bindings: rockchip: remove RK_FUNC defines
To: Heiko Stuebner <heiko@sntech.de>
References: <20191015191000.2890-1-jbx6244@gmail.com>
 <20191015191000.2890-2-jbx6244@gmail.com> <2236841.lnJlJmhppS@phil>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <29be43a3-516b-ce33-8a19-ffd8202d9c3a@gmail.com>
Date: Tue, 15 Oct 2019 22:26:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2236841.lnJlJmhppS@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_132618_748065_0112797A 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,

What's the plan for RK_FUNC_GPIO ? Change all to '0' or keep it?

On 10/15/19 10:10 PM, Heiko Stuebner wrote:
> Hi Johan,
> 
> Am Dienstag, 15. Oktober 2019, 21:10:00 CEST schrieb Johan Jonker:
>> The defines RK_FUNC_1, RK_FUNC_2, RK_FUNC_3 and RK_FUNC_4
>> are no longer used, so remove them to prevent
>> that someone start using them again.
> 
> That won't work. Devicetree provides a slightly flexible promise of
> backwards compatibilty. So a new kernel should still work old devicetrees.
> (not exactly sure if this means dt-binaries and sources or only binaries)
> 
> So while I think RK_FUNC_0-n should not be used anymore, we should
> probably just mark them as "deprecated" in a first step.
> 
> 
> Heiko


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
