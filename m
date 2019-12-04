Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C65112943
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 11:26:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjMqtRvZKj73EBWYhJMqlbXJN+a3tjJB6NWVaS5bmGE=; b=QF3hqD6c8HRaFV
	ZPXYQ51cQq3PWYg3On5MSgPrQjnRO+Ra5xHTiEXz0Z7eoJm2/zI7EyeHhiO8Z9t/7HQgjDZp9wgD1
	PGh3NGQtc/M2LhkRcR/ioI4LOCCIpo7JXjZLW9Kq5aOaAydWKs+5ZQbuAqstnCqYzl32XhnnTqnVL
	5eVKzFVP31mpfHp79YXjUIrwovbmlwJ/KHfWwFp37W982VgVOAPxiTFlJvRJ0FB8BuQLZPXeX4WW0
	PzRJyp7+Ov/mgm8/+FU7zkNZg4XrxXPwXVviqTpx4osowMaW3d2rcVR8c1SadZxLK/Z2quMlmJFYa
	Ba6FR8ICkEJKsRPLsvAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRrr-0004xc-W4; Wed, 04 Dec 2019 10:26:48 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRrj-0004wg-6y
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 10:26:41 +0000
Received: by mail-pf1-x42f.google.com with SMTP id n13so3452443pff.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 02:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uzsef4KJrsS+vISRoINrm5pjWR4MnJsKKjbKbFFAkQw=;
 b=plcbcqfkYNxwTh9QWAJxdbLFK4r7wJFyd7D4RWeG7E7a0ApH3VV3/OG1vj3PObgRsx
 Hs05DsuSr5Q1FtNmT5oEoEgDmPsmc28+kpoANcgCVsc4pdYPjmlCH+78MzURD+7Vb3BM
 vh0LRMUtfzCvdojax+IS7luRhqOzQQgggw5MGfET5RfRdU0+9WunAeqNQOPI1v1EciAO
 fWXlySGPRZU1OIB7Rcmi+n32F4nE5mt7wONwQ4WCCD/s/fjF4IErHM0NynPe+UFoRyn9
 4zcj43XUBWvVdpXBUltIAq8DIHT0rgXEkzVx6KeOHbhiIzOzQ+PQMpeYstvCZz3gTOED
 3b5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uzsef4KJrsS+vISRoINrm5pjWR4MnJsKKjbKbFFAkQw=;
 b=tVLRj1EMuL0hev2SS8jvR6LRmU3uMJUAt6vi0Bgl4ewLfF6j+HJbZHmslccFmhqga1
 TF5ncw6RxM4buHqjIwz7OM5753NMVjvjRDwT3/Pe7IT7McFv9MO+2n38fb/B0REFSGk5
 E8A4KOlNceKKuLCcz21oizOqRIhaeb+DMM33yOXqDOn/W1pCXCTg8/bgyKpaPvF1Nzyk
 L4sTkYWqzxSqgzzXrGdg+6EYc+i/ujS1d7Z0UbuHqm0Ab5Sv5bXoPgWVgyvhjiaaTj8o
 M19k+OdCIdD7aCkg6AFEstZXVyxCNyMlrXkJpd18bSASGHGCjykGlv52fsq3X5jglYqg
 Ce0w==
X-Gm-Message-State: APjAAAVZZh9v2dP5QZ0EOHsUb0lkfweh/A118RMLCjfY/bvSgur87wp3
 Tfc/VZVu5AwcgZcYUAdnV+Zd2eVFbrw=
X-Google-Smtp-Source: APXvYqy0xchk5KDlqBbD2ez6El0z37utXxmTy0Z4siJZjd6n2+DLGWwd0SdK8poRbiZV/8sisN14SQ==
X-Received: by 2002:aa7:9988:: with SMTP id k8mr2637132pfh.200.1575455198334; 
 Wed, 04 Dec 2019 02:26:38 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id z26sm6727403pgu.80.2019.12.04.02.26.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Dec 2019 02:26:37 -0800 (PST)
Date: Wed, 4 Dec 2019 15:56:35 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mikko Perttunen <cyndis@kapsi.fi>
Subject: Re: [TEGRA194_CPUFREQ Patch 1/3] firmware: tegra: adding function to
 get BPMP data
Message-ID: <20191204102635.4umxtgmishlijyn4@vireshk-i7>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <20191203174229.GA1721849@ulmo>
 <9404232d-84ce-a117-89dd-f2d8de80993e@kapsi.fi>
 <20191204091703.d32to5omdm3eynon@vireshk-i7>
 <cdb685a4-4d00-4635-df12-c67a6faa81e2@kapsi.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cdb685a4-4d00-4635-df12-c67a6faa81e2@kapsi.fi>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_022639_459839_DE817BAC 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, Thierry Reding <thierry.reding@gmail.com>,
 linux-tegra@vger.kernel.org, Sumit Gupta <sumitg@nvidia.com>,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-12-19, 12:21, Mikko Perttunen wrote:
> Ah, it seems I was mistaken here. Thanks for the information.

Please avoid top-posting [1][2] for LKML discussions.

Thanks.

-- 
viresh

[1] https://en.wikipedia.org/wiki/Posting_style#Top-posting
[2] https://web.archive.org/web/20080722025748/http://www.zip.com.au/~akpm/linux/patches/stuff/top-posting.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
