Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B5F12ADAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 18:38:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N3Ieq6cvypbQeR/VuXEoW69tGHgn5VB5IVZ+dCKvLZA=; b=D9WJlMeVjGiLN3Kb5tJfXf9Ti
	aDJF2x8wF8vJRzILk/OWZZl6JXYKSdxAeiIRRbxeCg3Dyi1BmeturVqNW/InSPLoYfBB6KXUbWGAm
	SFk5mS0X4fdvWCL7txzRFJQqUMDuRp+bRi6eubuUpklWLkvuiEs4h9o88gFMG1XYoT2enWXXL0Hy4
	13Hke9D8UaCVy90z4rV83PgUMnXkEMEMolQyXNzxeqtoNGHe1GKQmRYgYjJk8HMada2jXUHGWPan1
	oTTzt6LMzEjfgH+6IVxU0i8NTcQCYS3EFB16tERxDhsanlPFvhNAyHufJd/8yuSiz6EW0ghKy5DiF
	oZ+eOUj8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikX5S-00034j-AL; Thu, 26 Dec 2019 17:38:14 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikX5J-000347-AU; Thu, 26 Dec 2019 17:38:06 +0000
Received: by mail-pf1-f195.google.com with SMTP id x185so13467035pfc.5;
 Thu, 26 Dec 2019 09:38:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MmHJMhL/ClL96dvLO618jh4MTLRMaTH5YzPmbcG1nUg=;
 b=HA1sWAJRjZNNNAtHZFawyj+baJJfAxM5TzPKC2qMlSETm2J98/m1/7XfVgA8SU0suB
 tCL96EjtcLtbAdheVycpUKYY3JqozYTpz/zUrwGAfkc4EPojCytAa6VSkzb1mSFupQyv
 uuDx8Hyn1AIzpvmoXv+0jOD3ayUlZ4P7WUnbeBhQl1vE3yOWgF1Op8DuIppLrFF44v1m
 hMSa2K0Bem9DCKv5xfo2gvOWqDxnamUa7W3pAH2c7EUGo5yT9wcYPpIhd/z4B1cJJFex
 GfdmJur257p58MStYCOYXACa8+thN5A2whovWH5YsTx3kTK4TIO3LQ+l3OKLUxhTO+Sj
 uhZQ==
X-Gm-Message-State: APjAAAXTMS2qL7u4pQbLS8E/Sra92gJW+HUkfc7akkaoJTuO9Q4L/3C7
 hqGwMGw1Ezk1fFsEra/hU68=
X-Google-Smtp-Source: APXvYqyascaaQ389fbn+3f8vAXtesPLJnuQSNGE9PhWj5Y6WVbwdID0iWpamDa9hSnWdFNKZeQ0HZw==
X-Received: by 2002:aa7:946c:: with SMTP id t12mr40719359pfq.137.1577381883806; 
 Thu, 26 Dec 2019 09:38:03 -0800 (PST)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id q193sm33834849pfc.132.2019.12.26.09.38.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Dec 2019 09:38:02 -0800 (PST)
Subject: Re: [PATCH v1 1/2] scsi: ufs: unify scsi_block_requests usage
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 pedrom.sousa@synopsys.com, jejb@linux.ibm.com, matthias.bgg@gmail.com
References: <1577192466-20762-1-git-send-email-stanley.chu@mediatek.com>
 <1577192466-20762-2-git-send-email-stanley.chu@mediatek.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <96961682-9455-907d-753d-40c87cfc6b15@acm.org>
Date: Thu, 26 Dec 2019 09:38:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1577192466-20762-2-git-send-email-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_093805_363996_61BC9282 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/24/19 5:01 AM, Stanley Chu wrote:
> Currently UFS driver has ufshcd_scsi_block_requests() with
> reference counter mechanism to avoid possible racing of blocking and
> unblocking requests flow. Unify all users in UFS driver to use the
> same function.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
