Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF0082F81
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dTu0y4q47Jo0hLPt2BjdGUYEeE6YM8AxQcgHYPZVNbQ=; b=okHFP8HcBkRb2yR29gfc1wvMP
	BnZEYrNcRQ5YuJUpLuX+XtJFl2eboWNmA0OokaXe+SWpjTB387wq1LkUCbgbk5xN8EYN4ba/k9a5r
	m9KtBE/qWktHh2sDi+2wYDTmKGGRrqvOIoXVKDqAaNrezyZVHyN0Lu5szhGiixOVMIMKc2GGwqfj6
	QEZDIp+hV7IWdyoWDMJO3P7S+EXH76OeBqYF+5gb4ZAW4wmKFra4xZhsACLJxirvQZqEMiocmFwVV
	g4Rm8WvvF2lLOSl4dssqCfCbGMq0deFrakXHCkLNF67fAtZZXKPJZWArY79OQ0aa2C1wPg7aCuihQ
	bPrW8cW+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwOH-0000TV-T7; Tue, 06 Aug 2019 10:08:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwJt-0004Y2-IV
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:03:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id x1so37372408wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 03:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yRfiZQS/MLeED/+UleHvJbVSuxRbNh/I4+CcWmfu7n8=;
 b=Vd8lWUxERdFr52N+7CmJG7ZCxbUmKHsZXQh/8skgu8vMxG9PVFSXBzzcln5FO6DyvW
 mtkMK5yR8FvjgO4K37wqDtozL3n0WKWD/gXnWUPDJt/4RKXBvdnwwQw/sftROFIc5LLy
 vaSyVQ+9t66RxvOMcyqaqAwgeFLjHc75DlnMNP4fdX56X+FlOO6hWY8a8h66+UVEJL+5
 nqHj17rHatoPqHzs0Y76G2CZo6IoL3bT3NcQi3UcdBTpGDFgWPOd6jMu02TOKFGvrPbu
 hzf23irMD2GsWBeFePeEoCR/KE+J6aPg4akZOsMjLSKfY2bYvnIdwyTkYeYi7nKkYHvD
 +uig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yRfiZQS/MLeED/+UleHvJbVSuxRbNh/I4+CcWmfu7n8=;
 b=EXOi6UCvzmqA7TvlS7hD6bGhLsfrb0aLhkBtkSad40FIHntiFgTHjM5jw2U7FQpDlH
 cpBq6Mk867rbTpLj+t4AG65tt0oOT7pABcZSLrG82hjTtYAUUUo35pqZTKGk+GGjxrfK
 /Cb6oRk5CW6GZrmfL4/rpnbx71BDVzBs0qN9SdB2hb1zzlGCdJlnhwK5k0+E8XapZxxb
 5vn880rW3EVmqdxuHcb+iyFUxXuMhFrpRwkNMrVCdKm0imxtZNacOgUOi9rNVj4c3F6M
 GK8cAAq/PwmyQt0MSHh4TWZNnYymMlFuer13EFaW28eyBzXxs8tLjqnxJ0Z3+npYezw4
 qhIg==
X-Gm-Message-State: APjAAAVtO/GxSJckS/aQkOMZmgdW7UMRmU6A0VbrVqp4E9huSO2hRPJN
 l7Q/ocqy0JhxG6lgzX11XqrQ2g==
X-Google-Smtp-Source: APXvYqzagEuL70h0nJNiwsRJzSzRRsUyeFmpldhU1sRM+F+c6A1G1ix0bnDeLmhOnsF1ZMs7mjqZ9Q==
X-Received: by 2002:adf:efc5:: with SMTP id i5mr3830434wrp.158.1565085830815; 
 Tue, 06 Aug 2019 03:03:50 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id n9sm134635207wrp.54.2019.08.06.03.03.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 03:03:50 -0700 (PDT)
Subject: Re: [PATCH 1/1] nvmem: sunxi_sid: fix A64 SID controller support
To: Stefan Mavrodiev <stefan@olimex.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20190731071447.9019-1-stefan@olimex.com>
 <20190731071447.9019-2-stefan@olimex.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <9b26646f-f8db-cf8d-6f47-f2fbb0ac41a8@linaro.org>
Date: Tue, 6 Aug 2019 11:03:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190731071447.9019-2-stefan@olimex.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030353_970183_95EE980E 
X-CRM114-Status: GOOD (  11.98  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-sunxi@googlegroups.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 31/07/2019 08:14, Stefan Mavrodiev wrote:
> Like in H3, A64 SID controller doesn't return correct data
> when using direct access. It appears that on A64, SID needs
> 8 bytes of word_size.
> 
> Workaround is to enable read by registers.
> 
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>

Applied Thanks,
srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
