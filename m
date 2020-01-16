Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0753413DBE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:31:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsFIQ272WF5n+fzhrJ4QTbmj/GCxBZJudPfvmN/nYmU=; b=qpy+I4SN2h8sgg
	o3SL03xgB59NeU2gXUDmDJtla+23KNN0Qf3pICG8/kBOE58PctqM6KvdjkolQeMlxbKOmVX8XRT9c
	3Pk4y2nr7XZYiLbUI/1Bpq8+bIeoqMVKS+ouPRqPJ/H6G1dZDKVnU/pqCZ4B7LiXv4hBc+VR/uv30
	RzxXzeRrJ2fJDvRX3/8XtpCKpwHuyYK+y15Bxm4TJVPWIXh49s643uHmfFbMjEbeOa6MPGpGVqKqX
	SRG9spAb6mlvyxUfVElbiK7Z7jgaiy3+tHbqPazQmnMZ74IRGRIAk9/Z2fUArs+1e1uOXftQFgItO
	cSBg9ZXknN7TCUeDyYZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5Ef-0003n6-QS; Thu, 16 Jan 2020 13:30:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5Du-0002Ys-0f
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:30:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so19155532wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 05:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=UfygWLCc88sFrmjAuQP4lnVDVkzEeKEKCExMy7Eq/+8=;
 b=GzwI7l0KxNdLEBhVPtsxp6NDNF6oyDOZU/V1cwJ/m/uu9sEBp3vZ4ldtrZCVb0ERBh
 iwbaZcugXTP0mWMv0dOgFqPd2JJiutwJq1+ULTbIISzgEO/4qp4ZzOKYtKqCq4rX/pDT
 j2wq96/cmQJ+N1RP+PeoobUfHteJ3tzlsWm8sU/tN3JgyMN0WdafquZ09iYvNFjOEDTI
 VDrel4eAie8eeD5mEWObhoerl5i3eSPhzwbyrBv2ALLazHOM/hA2e4mwDjCWrjfvoKd+
 0bL0t1uwtt6rjXCT1BsjScS1CF9qYglzBjWw7WvogsfuPUNh65yLlpyEOQHvmbI1OwKB
 +/hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=UfygWLCc88sFrmjAuQP4lnVDVkzEeKEKCExMy7Eq/+8=;
 b=bxW/FKtfb2zeG5y267839tUnS3KnvASLtIsdqckIoCMTtwewhCfWRM0jWM0nXJm58o
 uxxtpdYhelqlbloclHYCgu3fb5ev14cSfcLcImRTPnKAU/QHtKxn6PCV2hOFg6r+Yjzd
 y9y7pRUmuB8zXn10sVCVwZ1cKARq3H2pUcgcFWzwoIPck+HNbmvo4hND1YFjsrBfaL8G
 G9V/P2HjWHDjYgitn3WAhNG3CyVYf47ZVzs1RzywNPItY9uy3oq0/LtLWP/eeVmxt2/k
 aLaoj+iar/MwBpWT97yCPp/lpIoBqOk3xGzxIWjLNRTR2eDFKSwRfPDEp4QXDxRV/spo
 PfMA==
X-Gm-Message-State: APjAAAUJNVidj2qFqh7bhrvFdtIo1tGG4zc2iyQ8xdOgEAtyZxxmGhe2
 dCZRZY+ydjJAaukGwfivcOkorg==
X-Google-Smtp-Source: APXvYqw4hOwN4dRzgFi88DWzyqE+AMTjtps6H/4gHqLpM7K+d0RkUbAC5kLjdkPW3SYP8MBp9FZ5wg==
X-Received: by 2002:adf:ca07:: with SMTP id o7mr3449919wrh.49.1579181406897;
 Thu, 16 Jan 2020 05:30:06 -0800 (PST)
Received: from dell ([2.27.35.221])
 by smtp.gmail.com with ESMTPSA id q3sm4354613wmc.47.2020.01.16.05.30.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 05:30:06 -0800 (PST)
Date: Thu, 16 Jan 2020 13:30:25 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v3 2/7] dt-bindings: atmel-tcb: add microchip,sam9x60-tcb
Message-ID: <20200116133025.GN325@dell>
References: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
 <1578997397-23165-3-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578997397-23165-3-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_053010_160928_C5C7CC4A 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, richard.genoud@gmail.com,
 radu_nicolae.pirea@upb.ro, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxNCBKYW4gMjAyMCwgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cgo+IEFkZCBtaWNyb2No
aXAsc2FtOXg2MC10Y2IgdG8gRFQgYmluZGluZ3MgZG9jdW1lbnRhdGlvbi4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWFAbWljcm9jaGlwLmNvbT4KPiAt
LS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9hdG1lbC10Y2IudHh0
IHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKRm9yIG15IG93biByZWZl
cmVuY2U6CiAgQWNrZWQtZm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9y
Zz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBM
ZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xs
b3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
