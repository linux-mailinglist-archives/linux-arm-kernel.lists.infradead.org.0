Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA87DCD8AA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 20:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5zFekjghV9zw99OTEXKXawCbKHst/K9NtpF9M7Nqj3k=; b=Oezq9um797hRUtr17NfH57YQ8
	RHVJGQvjncU9MwemQOE83VPgivaZpeUJFBFmefaZFCbTaBTKy3+M/2lcKBWJtDUofcXcT6KIOLu/p
	FjLJ7JmDxodEMFkMNrEeSC+2JSUFi6Pqh+4mU7rZAnmVNjdmRIb8pb/svrsSB47z4yZtc6BGB15UR
	KUfNsi4g+I5poRLCtCXyylUWj7juqjtAHYQc8CuK8C5PO8PdSB3LFs3qAWf6BZVqHMP4HKwL271wm
	eoF3kb27ZMv++TsKaDtzDge7JfJy+uVyKhXRjHpgqhzRymViErM7IIvHOo2MJh1duoDv97ZDXyA9f
	GhvusBZKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHBTg-0003iC-I9; Sun, 06 Oct 2019 18:41:56 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHBTW-0003hj-5Q
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 18:41:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8lAJFEkwl2Q1Fvmq3UOLVFJ2OXdPmm/TVkvNTIF5e4w=; b=WVWZ2K6mbb454aWFA0kF4Y10pG
 aLeY5X8WJQxJCsJC/9FFiDqtcHJ4LkNq5KpTo/PdReBUis0fO1xAnkayWrmyW6vOqLTvcryjo9acg
 r+6yIB7v/uo3ynAJ+4gax3yoSysPuZET2PBL//gYy7oppDZiiuTrLxIAqrvcBZtXqPSiRRbFrK5Ue
 BNGlzk1TFhqPmgwEFRKPvCpCTekpG7DwK9NrvWN2eOxDq4BiEuWfqfRsYnWfVRqv5sZ9w+JR2GEyU
 lLd/PcUC+cHc1Z3k3v8ep12hFXdcPuyO5nBA+ez923v4+9EtPutpL/wWcWiv+NGZOktRCzOkA3Reg
 ryRP6+AQ==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:54564 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1iHBTT-00024a-L0; Sun, 06 Oct 2019 14:41:43 -0400
Subject: Re: [PATCH v4 2/2] docs: driver-api: generic-counter: Update Count
 and Signal data types
To: William Breathitt Gray <vilhelm.gray@gmail.com>, jic23@kernel.org
References: <cover.1570377521.git.vilhelm.gray@gmail.com>
 <75a9ca9837f4d66cb4912cfa535176e27f7c219a.1570377521.git.vilhelm.gray@gmail.com>
From: David Lechner <david@lechnology.com>
Message-ID: <9850a671-2822-24b7-3c22-b4abbd6a6b37@lechnology.com>
Date: Sun, 6 Oct 2019 13:41:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <75a9ca9837f4d66cb4912cfa535176e27f7c219a.1570377521.git.vilhelm.gray@gmail.com>
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
X-CRM114-CacheID: sfid-20191006_114146_287290_AC1BEAF6 
X-CRM114-Status: GOOD (  10.18  )
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
> Count data is now always represented as an unsigned integer, while
> Signal data is either SIGNAL_LOW or SIGNAL_HIGH.
> 
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---
>   Documentation/driver-api/generic-counter.rst | 22 +++++++-------------
>   1 file changed, 8 insertions(+), 14 deletions(-)
> 
> diff --git a/Documentation/driver-api/generic-counter.rst b/Documentation/driver-api/generic-counter.rst
> index 8382f01a53e3..161652fc1025 100644
> --- a/Documentation/driver-api/generic-counter.rst
> +++ b/Documentation/driver-api/generic-counter.rst
> @@ -39,10 +39,7 @@ There are three core components to a counter:
>   COUNT
>   -----
>   A Count represents the count data for a set of Signals. The Generic
> -Counter interface provides the following available count data types:
> -
> -* COUNT_POSITION:
> -  Unsigned integer value representing position.
> +Counter interface represents the count data as an unsigned integer.

The previous patch looks like it is using unsigned long instead of
unsigned integer.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
