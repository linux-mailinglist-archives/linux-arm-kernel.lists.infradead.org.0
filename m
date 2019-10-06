Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50886CD8A6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 20:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9r25fcryl6ZrQOBSd3qGUJW1X8Dnco/VoLcO2JvR4xM=; b=lEnfkucD+40MTIeaeFxP5kzji
	Mrm+D7+vvrp1kXdAhu30tJBY9dYjYpNcQ1Sq4aDLpdepT/P04Tur34b/Yy2Iv8HzPQQ7fMtDu3xoC
	9M7Tug3vgr4g7fxJEqBeWY1fVGKXr7MDjZkwJBpgndhD5s0YlajVNZZ7CFksfmPq8G3CGcvXU2EhS
	H72bJuDQjh+sdOyz2oSzeMg9dj1YbA1aKBFqb2la49ybTdJutrnbbKs+kDqVgxL2+NogJWMg5ddgN
	LTh2o77p/33WzqsVlk8KwXYcEKXgp8sSzI+x5bCupTi5Wt7sfXRuWXdC3BhSLaAK2S2cDzoUPh1kX
	M7pqjac/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHBRJ-00027L-6M; Sun, 06 Oct 2019 18:39:29 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHBRA-0001ue-R2
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 18:39:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EB7HgQCd6wfHbcV/vGVRoCbCpG0HC8nsMy/oBEd1URQ=; b=0vzoW+jm1B3XKAvl9MDT9KBTt1
 owxlfy79uyVQco2v1xHDwo2GTYPtMx6pjhSOHOZ2DTJKlPLjeENuHuf4YdspzMtk+2fa9NHlMTAnW
 9Vmmjy8osDo/GebfC0UPRe0Ng4+khLlB+0LMOIepWaX9ERQ7dYoDtZ1Wc6FMHlpj4dTVpL6cx417R
 8NbK693FPbVQQ3YpUElxr5utVk26R+TDXWO5BY7rbXHmpfYMpJlZkL/DwBdZdbroAemDDl+MxAdMJ
 sn5KtiK8VZ2P+HBOLT4q2Sc37Lo5+WJBCJohH88UBclmAYSQQnPfPhQUzmNhxeeSAfVGIB8IyNUIo
 tw4Kut6A==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:54518 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1iHBQR-0001Yn-Dn; Sun, 06 Oct 2019 14:38:35 -0400
Subject: Re: [PATCH v4 1/2] counter: Simplify the count_read and count_write
 callbacks
To: William Breathitt Gray <vilhelm.gray@gmail.com>, jic23@kernel.org
References: <cover.1570377521.git.vilhelm.gray@gmail.com>
 <7c129bd95675412e21c7a54e366e21723cac94ea.1570377521.git.vilhelm.gray@gmail.com>
From: David Lechner <david@lechnology.com>
Message-ID: <110c2460-f440-e36d-7975-61c53a94208d@lechnology.com>
Date: Sun, 6 Oct 2019 13:38:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7c129bd95675412e21c7a54e366e21723cac94ea.1570377521.git.vilhelm.gray@gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_113921_035179_C0D9118F 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: benjamin.gaignard@linaro.org, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/6/19 11:03 AM, William Breathitt Gray wrote:
> The count_read and count_write callbacks are simplified to pass val as
> unsigned long rather than as an opaque data structure. The opaque
> counter_count_read_value and counter_count_write_value structures,
> counter_count_value_type enum, and relevant counter_count_read_value_set
> and counter_count_write_value_get functions, are removed as they are no
> longer used.
> 
> Cc: David Lechner <david@lechnology.com>
> Cc: Patrick Havelange <patrick.havelange@essensium.com>
> Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---

Acked-by: David Lechner <david@lechnology.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
