Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C7B813EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 10:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m7FC9G/bzEkbkAgjJCKveZQOlKmC6B+l+3jMeV90TxU=; b=Q/z+VuUM2Q9+zIvfFpSfDitwr
	dV0THDsFBdtDTXBPU2MszLIwwAlo+kTvrPWZ4wHusJUWSIJT+3GyxspPc3BuoePIvPQaU4vUEBtjt
	XujD9Es3rFcJRug/L+RZn9fBCfuoZlQPR6pTQAG2g4bmCBNI7aoZmHsdhYv25KPwktErqBhrq4fd4
	2a7KG/+b/1X/INvAMjofsedMyV/VT1Rt0QGj8OK1CmZ9tUToeR+7E+muFG4rWq81IneUZrBB8FIqq
	wqmFVEN6agV6p/MAXqvh2dlBQnM0dcU0850CpiGoeV98+dORJOmIDvRAaPbzOpokUKzFZc9CZJGZ3
	W7KBWACmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huY13-0006YB-3Y; Mon, 05 Aug 2019 08:06:49 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huY0o-0006Ar-8u
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 08:06:36 +0000
Received: by mail-lj1-x242.google.com with SMTP id z28so24276170ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 01:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4jotGUYX3HDjIjrPWkq93S31gJkGTLLQx5i8QIerKxE=;
 b=OKXu80bhtKFjmm2MpkIDYVWmXqi7Y+Xjky/uEczjP2Zl5b7vO97lSZ4GxsSOJjZduQ
 VgPXNXexmCAKG6Z+637VhMExKFfEjxuDw3H3mRcIbO3qLRCxF1TJiOxHnvXkyL1xl5hz
 9tSzcuFZEaM47GjqXTJ6n5YnEqhbYAzKlpVrDHKCy9VeCfnp53elgyy+VMv+lz31Ers7
 Eic301vKwslj47MtbPz81DyzufZoA3sVB/fmBoMeBi2wwb65qyfXQctIncrR9gNzSMvv
 ew3Ty0ZvYjqCUhy9kY7gTZ+iW4B61AZpbS675ligIs/I+dyRKPx83vFtsSrTsvbz0lFJ
 WX4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4jotGUYX3HDjIjrPWkq93S31gJkGTLLQx5i8QIerKxE=;
 b=K7fZ5VtzPZmzja+UcbyGoGZOjNt3xLbDUa5IMBdzodR0bhFyqI2tynxCMhtGhNiHu/
 gDsR4IejdgWa4nJ5QBQP0AQoDNncG3Z/MSstQNVCqaO7WK88E5CN/C+cr2IFvSxIX40M
 B/pUrdNKwh0nrvG3xpDo5vZyZQxGc+14+XE+MtLlBk7opHysglJtY2NuD34OO0SOAunl
 7bsEIv/Zc5SfsCbmfwp/nSBEWWfXVlMFK2gCvCm5iD+oeT4OW9Tf4tMrO/QOQwqnog9E
 FsWxgpHHG0QFeuBbNYyDPC5onHWDEUlj1WHO68H/rAefzWss5iVMNMYw3cLdgGjE/r2t
 /IqA==
X-Gm-Message-State: APjAAAVumwLYIxVdJzDzdfneDav9wBTLzxvr1lXc0thA7L8VZ0/xO4hF
 gkBFTr8lmXiZMtW1OmCHq8vD/w==
X-Google-Smtp-Source: APXvYqyZpQSVk777vhC2lpS6B8C38YOlvgzOQV2vQdpdrwUMZBvpR5l2r7dZg3bY6N4q4hVA/QRa0Q==
X-Received: by 2002:a2e:9b48:: with SMTP id o8mr78054712ljj.122.1564992392086; 
 Mon, 05 Aug 2019 01:06:32 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:44f5:2f9a:806:ec14:8a98:a30c?
 ([2a00:1fa0:44f5:2f9a:806:ec14:8a98:a30c])
 by smtp.gmail.com with ESMTPSA id l24sm17213019lji.78.2019.08.05.01.06.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 01:06:31 -0700 (PDT)
Subject: Re: [PATCH 2/2] MIPS: remove support for DMA_ATTR_WRITE_COMBINE
To: Christoph Hellwig <hch@lst.de>, iommu@lists.linux-foundation.org
References: <20190805080145.5694-1-hch@lst.de>
 <20190805080145.5694-3-hch@lst.de>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <f02604c5-dbea-e64e-cfb7-3a002b0da9a6@cogentembedded.com>
Date: Mon, 5 Aug 2019 11:06:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190805080145.5694-3-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_010634_735551_CFC7B389 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Shawn Anastasio <shawn@anastas.io>, Will Deacon <will@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 05.08.2019 11:01, Christoph Hellwig wrote:

> Mips uses the KSEG1 kernel memory segment do map dma coherent

     MIPS. s/do/to/?

> allocations for n

on-coherent devices as uncachable, and does not have

    Uncacheable?

> any kind of special support for DMA_ATTR_WRITE_COMBINE in the allocation
> path.  Thus supporting DMA_ATTR_WRITE_COMBINE in dma_mmap_attrs will
> lead to multiple mappings with different caching attributes.
> 
> Fixes: 8c172467be36 ("MIPS: Add implementation of dma_map_ops.mmap()")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
