Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3268186FEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 17:23:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2FoiFgGyc9miTC1M7JSJbcSCLCo8lcXa+exQDOIXDD4=; b=p2oCED4MWf0YuLhcjLh5S+WC1
	A0C6Un00hpyr2SKYFfXI87g/NOtVfiE/iclqtwkg5cD2qj1tBdI5l97q4bpDF9JpoGz4rf9F8RT0H
	YlvBAtjPmEIEMKfH92+W/YNHzaP7nlStvCBYKpYTMHFZTSgyB7S4Gn48hsdUlPf8lt9Sx3eNT1z0C
	S331dtabhsfZD4W+wd8ohaVLwJp1gjimydLpkXpZBYzqpCH8uRgNx/IjEYcH4Yi3OMlpbc1pZLbgi
	iCA/eMUcvuxL0W2AWzvlxhRpTpbnkQb7zIi+fKbYnrSMCt0jgaYF+jycCPvkAnhbfuo0vyShFcpfi
	VTfnJnENw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDsWN-0000sr-Nj; Mon, 16 Mar 2020 16:23:19 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDsWF-0000sE-OL; Mon, 16 Mar 2020 16:23:13 +0000
Received: by mail-pg1-f194.google.com with SMTP id u12so10020426pgb.10;
 Mon, 16 Mar 2020 09:23:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MPeWvE1ynYMgmBjcIfuACly8OXPEjkr9woxJje4Vp+k=;
 b=Ynu7D155zNdMizfno52OJOHSmT5lXvXR+MPCmfHCg+2OkQOZ7sy6BLMEAywmxluUWV
 rWWJEd9T790C4Zf/4OiFISrC53dHoAolU/Yr7WG1WVTD6BG1Q2c+YHPVAGKduSCYosc/
 YAmxOXATv74eIDXeu/7Qa0zPlF+nXsw45C0TqWY8VEv9BPNV8srroj593Fy+g7uiB6iO
 kaErRDcsFJodBcDRL113ZpLKCle1s4H1N75LW+/xq6QBwZT5qbOUM8E5xNz553PVVDJa
 7E/s0xQ+GC80O+UBAVRkRgjOPMn7LMgQZOv72mF1wwlrGK95NPIqtGZ7nwpyQpau9ITR
 8KBQ==
X-Gm-Message-State: ANhLgQ2qOFsOu8liRG/YsoFb0V444SsurxkdRsAnHnAeGZIT2U0NWNjv
 PcOOXgqAgTlXUGpbs2V7fxc=
X-Google-Smtp-Source: ADFU+vteq0ZXl4bflTQr64JEC/RlOF0r9XRD+1FB4C6nIb76oOWRP1WchB6mng5hWY132x5LhHMaqQ==
X-Received: by 2002:a63:921b:: with SMTP id o27mr659097pgd.364.1584375789493; 
 Mon, 16 Mar 2020 09:23:09 -0700 (PDT)
Received: from ?IPv6:2601:647:4000:d7:af99:b4cf:6b17:1075?
 ([2601:647:4000:d7:af99:b4cf:6b17:1075])
 by smtp.gmail.com with ESMTPSA id z20sm66684pge.62.2020.03.16.09.23.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Mar 2020 09:23:08 -0700 (PDT)
Subject: Re: [PATCH v6 3/7] scsi: ufs: introduce common delay function
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>, avri.altman@wdc.com,
 alim.akhtar@samsung.com, jejb@linux.ibm.com
References: <20200316085303.20350-1-stanley.chu@mediatek.com>
 <20200316085303.20350-4-stanley.chu@mediatek.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <fdf91490-9c7d-df34-1c1f-e03e12855378@acm.org>
Date: Mon, 16 Mar 2020 09:23:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200316085303.20350-4-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_092311_795442_7225E2BF 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bart.vanassche[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/16/20 1:52 AM, Stanley Chu wrote:
> +void ufshcd_wait_us(unsigned long us, unsigned long tolerance, bool can_sleep)
> +{
> +	if (!us)
> +		return;
> +
> +	if (us < 10 || !can_sleep)
> +		udelay(us);
> +	else
> +		usleep_range(us, us + tolerance);
> +}
> +EXPORT_SYMBOL_GPL(ufshcd_wait_us);

I don't like this function because I think it makes the UFS code harder 
to read instead of easier. The 'can_sleep' argument is only set by one 
caller which I think is a strong argument to remove that argument again 
and to move the code that depends on that argument from the above 
function into the caller. Additionally, it is not possible to comprehend 
what a ufshcd_wait_us() call does without looking up the function 
definition to see what the meaning of the third argument is.

Please drop this patch.

Thanks,

Bart.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
