Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBA310E423
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 02:12:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BkiyuA062Gn5Szq+8xalyWzvJE6EIQFwMUESuz5vmqg=; b=uIs5WW0q6txOfu
	aJbIGq7+BTE0csvDo2x27PKNDKwkc6KOjAYEgRDXGvo3JjAKByaaBOmmPjJKLmIpmKvLhshYyEG6a
	HFKmsX2vtsIK4nvm4yHdwuOKkhMHQjFEwEvz3emXFPwmgOk3IPmK2l2G6LDMoC02m6AJzLnIkyUnV
	jwXLKEPYHUh1LXnxKDmf7MSypNfvA/q1dXM0HXp+gwCq0xEnB7uuUzknQdaIM7zNPaVAiGY7x2XmU
	DHCYYb2A/mw5L55ObC9dlQAQ0aD7DU13wJXDiINc+Xhtf52dGWdAVSTyIVK0aD9kvWNzHifluRqkt
	TSlBmV08Fa0A2sqf44xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibaGO-0003xe-Oi; Mon, 02 Dec 2019 01:12:32 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibaGF-0003wz-F4
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 01:12:25 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191202011220epoutp04073beb59a944be1eff01d37a313c56e6~caL8-rI0x2394423944epoutp042
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Dec 2019 01:12:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191202011220epoutp04073beb59a944be1eff01d37a313c56e6~caL8-rI0x2394423944epoutp042
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575249140;
 bh=WPmCv07YFAbFQUab+kB9SUv//GYFJQ8jwI8NVUbMbMw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=p8GBTpIuffnQ3UIvVrR7LqNhJkR9WeZcEEKFYWHDWbKIFWdPSoXhnqhCMimHvWqxR
 xyPj+UgLmRomg77Gb7g+1I2JIbyaQ9upLjn8H+9LfSSckemGjNRg7Er5S62UwhrKkJ
 zP1xlkilIGrq6E5bGOWn0D9GtI3a07PYZGRPHYtM=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191202011219epcas1p28179e6341adcfaf803b5681a36cf2694~caL8e30_M2060620606epcas1p2E;
 Mon,  2 Dec 2019 01:12:19 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.155]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47R6XS0v5ZzMqYm2; Mon,  2 Dec
 2019 01:12:08 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 A6.86.48019.8E464ED5; Mon,  2 Dec 2019 10:12:08 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191202011207epcas1p17234463709e10e6702887483e6e1130a~caLw7J-u_1842718427epcas1p1Y;
 Mon,  2 Dec 2019 01:12:07 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191202011207epsmtrp174a201102f0289530761e42a13cc038d~caLw6Le431218412184epsmtrp1b;
 Mon,  2 Dec 2019 01:12:07 +0000 (GMT)
X-AuditID: b6c32a38-23fff7000001bb93-92-5de464e80265
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 64.2E.10238.7E464ED5; Mon,  2 Dec 2019 10:12:07 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191202011207epsmtip10b781d8f3f2440a747e6d98546755082~caLwr6YaX0775007750epsmtip1e;
 Mon,  2 Dec 2019 01:12:07 +0000 (GMT)
Subject: Re: [PATCH RFC 2/2] PM / devfreq: Use PM QoS for sysfs min/max_freq
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <a1c3f61e-f615-8b29-3c9e-bf65b529b038@samsung.com>
Date: Mon, 2 Dec 2019 10:18:24 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <1f567d6478b1782f7f4afc27cb6d3f896d77ac9f.1574179738.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrGJsWRmVeSWpSXmKPExsWy7bCmru6LlCexBuvms1ocOraV3eLr6VOM
 FtP3bmKzOH9+A7vF2aY37BYr7n5ktdj0+BqrRdevlcwWn3uPMFp83vCY0eJ24wo2i9XnDrJZ
 nDl9CSh76C+bxcavHg78Hu9vtLJ7zG64yOKxYFOpx6ZVnWwed67tYfPYvKTeY+O7HUweB9/t
 YfLYcrWdxaNvyypGj8+b5AK4o7JtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0tzJUU
 8hJzU22VXHwCdN0yc4A+UVIoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUWBboFSfm
 Fpfmpesl5+daGRoYGJkCFSZkZyzd/4y14BZbRWPzQuYGxp2sXYycHBICJhI32rczdTFycQgJ
 7GCUmH1nJTNIQkjgE6PEzi3aEPY3RolNf2RhGs5e380M0bCXUWL63XUsEM57oIb+A4xdjBwc
 wgI+Eoc/K4I0iAjUSfxc1MUKUsMs8JFZ4vGV9WCr2QS0JPa/uMEGYvMLKEpc/fGYEcTmFbCT
 OL1vEtgVLAIqEl+39IDViAqESZzc1gJVIyhxcuYTFpBdnAJxEotWJIKEmQXEJW49mc8EYctL
 bH87B+xQCYFL7BJ3F7yHetlFYt/kWYwQtrDEq+Nb2CFsKYmX/W1QdrXEypNH2CCaOxgltuy/
 ANVsLLF/6WQmkMXMApoS63fpQ4QVJXb+nssIsZhP4t3XHlaQEgkBXomONiGIEmWJyw/uMkHY
 khKL2zvZJjAqzULyzSwkL8xC8sIshGULGFlWMYqlFhTnpqcWGxaYIMf1JkZwGtey2MG455zP
 IUYBDkYlHt6OV49jhVgTy4orcw8xSnAwK4nwXld6GCvEm5JYWZValB9fVJqTWnyI0RQY2BOZ
 pUST84E5Jq8k3tDUyNjY2MLE0MzU0FBJnJfjx8VYIYH0xJLU7NTUgtQimD4mDk6pBsYke0ur
 07waT4RrmObX1HzraM4UC9VfEhmxpS2xvi77fxb7ekWD9o7zK4vO/j6ZFvosJnPhvoWhjbP+
 rn6wcSrrsZZTDZten9++m+no0qA/2df3F6+zXnM+yuGMbWxAiITk9n1ZBjNUE5jfHDTWKC2N
 frxcbOt8KdGJtQ193849UZttNFf1l4YSS3FGoqEWc1FxIgCqt00T+QMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrEIsWRmVeSWpSXmKPExsWy7bCSnO7zlCexBn3L+SwOHdvKbvH19ClG
 i+l7N7FZnD+/gd3ibNMbdosVdz+yWmx6fI3VouvXSmaLz71HGC0+b3jMaHG7cQWbxepzB9ks
 zpy+BJQ99JfNYuNXDwd+j/c3Wtk9ZjdcZPFYsKnUY9OqTjaPO9f2sHlsXlLvsfHdDiaPg+/2
 MHlsudrO4tG3ZRWjx+dNcgHcUVw2Kak5mWWpRfp2CVwZS/c/Yy24xVbR2LyQuYFxJ2sXIyeH
 hICJxNnru5m7GLk4hAR2M0qcPL2UESIhKTHt4lGgBAeQLSxx+HAxRM1bRolV776yg8SFBXwk
 Dn9WBCkXEaiT+PT7ACNIDbPAR2aJg4sWQw19xCgx6/lkdpAqNgEtif0vbrCB2PwCihJXfzwG
 W8YrYCdxet8kZhCbRUBF4uuWHrAaUYEwiZ1LHjNB1AhKnJz5hAVkMadAnMSiFYkgYWYBdYk/
 8y4xQ9jiEreezGeCsOUltr+dwzyBUXgWku5ZSFpmIWmZhaRlASPLKkbJ1ILi3PTcYsMCw7zU
 cr3ixNzi0rx0veT83E2M4JjW0tzBeHlJ/CFGAQ5GJR7ejlePY4VYE8uKK3MPMUpwMCuJ8F5X
 ehgrxJuSWFmVWpQfX1Sak1p8iFGag0VJnPdp3rFIIYH0xJLU7NTUgtQimCwTB6dUA6PI1+NR
 E+0mfdKvt7y94txhgYTQwldM9ZIsRUGhcv1cSa94VY9Gd1g/2+9+S/m/4Ldd9/88U3W8n1TJ
 FMrfG7hqgw9ztF3OIs78+ZdS+SPYZ7PdUw1f6dq3+Fj+lQtB7UvLbm6P/nsxWf5WT0S8+98a
 0anJ6WyWfyO46vgitnhN9P237GJCgxJLcUaioRZzUXEiAHpvBAHlAgAA
X-CMS-MailID: 20191202011207epcas1p17234463709e10e6702887483e6e1130a
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191119161307epcas1p2433f37aca4b40f6f122a786241d5399d
References: <cover.1574179738.git.leonard.crestez@nxp.com>
 <CGME20191119161307epcas1p2433f37aca4b40f6f122a786241d5399d@epcas1p2.samsung.com>
 <1f567d6478b1782f7f4afc27cb6d3f896d77ac9f.1574179738.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_171223_677007_F1EF9853 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/20/19 1:12 AM, Leonard Crestez wrote:
> Switch the handling of min_freq and max_freq from sysfs to use the
> dev_pm_qos_request interface.
> 
> Since PM QoS handles frequencies as kHz this change reduces the
> precision of min_freq and max_freq. This shouldn't introduce problems
> because frequencies which are not an integer number of kHz are likely
> not an integer number of Hz either.
> 
> Try to ensure compatibility by rounding min values down and rounding
> max values up.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 76 ++++++++++++++++++++++++++++++---------
>  include/linux/devfreq.h   |  9 ++---
>  2 files changed, 64 insertions(+), 21 deletions(-)

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

Thanks.

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
