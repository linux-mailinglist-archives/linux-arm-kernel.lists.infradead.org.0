Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C131B78CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVGDOhbS20EWSGs+jq4t3kob/feRNZd03SRRUpMrNsY=; b=RYhsJPVZycvDz8
	JCfribgRtPs5N/1C8QzmabZlpyAUFfWS1w0bl2XML8u1rTTfsFZum/Hhw22ONwwBHumezOTat5fgE
	gxiXO83AmnFkT7uXCk+tB+1b0fM82zpWdBUA7Elfcp4wUfI5tZ5IKoZTzVI2FXX+XnMOPtbsIqaop
	7SBFHNWctBC2W2Cn6QFhY7qJPQYGT4FZ1lrM9CcwxEaEGbudNkcTvaM3phszfD7je8mOjhn07rqw6
	Axk76ZDFz+G1r8k8/hg8VDMF/vgBQ3PDnKmLlmosWzbk42m+u9CdxIN1AeXLIgkoULN9K5az3fHza
	+F7st7oxZR8Q22MSrc4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAv71-0007by-TW; Thu, 19 Sep 2019 12:00:40 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAv6m-0007bR-F6
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 12:00:25 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919120021euoutp0165d47cbd72ea69041b8a4c4faf41532d~F1Snvyo9a0983709837euoutp01w
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 12:00:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190919120021euoutp0165d47cbd72ea69041b8a4c4faf41532d~F1Snvyo9a0983709837euoutp01w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568894421;
 bh=DerDbGAWoiR6Y2JqjtLtX7C9VItryXDf729+0qeS3uY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=dqYn92odx2yP0HzliXFh0DCn6rXMML3tGhR4UgBel1lHgeUbR2nGJ6FySBqqNTq6l
 lBiP9xRe+RiCaPrUu8gXxey3r7E+MTSZe/+RuyYwoYZWfK38cZXUvwln1dtpAsBPW+
 b6e5z2VekeOygVnMTQbUyAFNKpKFLjfo/T4fcXn0=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919120020eucas1p20bc03814d56763aea29ff973422e227b~F1Sm98Znp1387613876eucas1p2R;
 Thu, 19 Sep 2019 12:00:20 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 5E.62.04374.4DD638D5; Thu, 19
 Sep 2019 13:00:20 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190919120019eucas1p10c2b11d19c92a1b1000e085a43abaece~F1SmTnfar0334803348eucas1p1Y;
 Thu, 19 Sep 2019 12:00:19 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919120019eusmtrp1271d47a0355dd49e526ba8a51b2d8db1~F1Sl6L4XO1335613356eusmtrp1B;
 Thu, 19 Sep 2019 12:00:19 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-56-5d836dd4de89
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E8.F9.04166.2DD638D5; Thu, 19
 Sep 2019 13:00:18 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919120018eusmtip1912f25e61f8d362b50fbaf09a381e6e3~F1SkxAugH1163111631eusmtip1T;
 Thu, 19 Sep 2019 12:00:18 +0000 (GMT)
Subject: Re: [PATCH v1 7/9] ASoC: samsung: arndale: Add support for WM1811
 CODEC
To: Charles Keepax <ckeepax@opensource.cirrus.com>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <342d08ce-d14a-02b2-a590-13b28c8c5154@samsung.com>
Date: Thu, 19 Sep 2019 14:00:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190918144553.GJ10204@ediswmail.ad.cirrus.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRTud+/uQ21ynZYnC8NlRUaaWXKhkgqpS0FPetqwqReNnMqmlmkU
 LkvNQrLSppCrIDM2bZlapuU01wMd1gwxMkXRXA6rrYe93a6R/33nfN95fIdD45IXhB99MCmV
 VybJE6Wku6i2bbxjiUWhli3VWT1YS6cRY2+XVBHsxf5BkrXkGBB7pbWDYM3maor9YsnFWMPA
 K4ItMTdhrK71DcXaxx4SbE5jK8V2VjiwNWKu2p5Ncvc0byjOUJlHcneuH+eKy/4g7lxNJeLs
 Bv+t1D73VXF84sF0XhkSccA9oWvoGpkyho48abyAn0CNKB/RNDDLoXRkZj5ypyVMBYKe/hFc
 CBwISi1FmBDYEVw2GycYN1eFbtSInFjC3ECgHZgniGwICs9qSSfhzWwH7fdnmBP7MMvgo6nH
 1QlnjBgMD3YRToJkQuHs43OuTmImAnof9LoKRMx8eNvc5tLMYPbAp74WQtB4wdPLgyIndmNW
 Q17OGdcwnPGFbMdNQsBzoc5W5vIAjI2C8eZ8TFg7ErrL1ZPYG6ymGkrAc+B5UYFIKFAjKGh4
 TQlBIYK3pnIkqFZCi6mTcJ4MZxZB1f0QIb0WjPpSXLikJ3TbvIQlPOF8bfFkWgy5pySCOhB+
 VBZPruAHZwb/iAqRVDPFmmaKHc0UO5r/c8uRqBL58mkqRTyvCkviDwer5ApVWlJ8cGyywoAm
 Pu35b9PnetT0M8aIGBpJp4u/LcyWSQh5uipDYURA41IfcdmKiZQ4Tp5xlFcmRyvTEnmVEc2m
 RVJfcea0vigJEy9P5Q/xfAqv/MditJvfCdS+/lTD7oDhqA+PdmT1rjNbZ3KB+/SjMbF7v264
 lTyceax+S5uj1xI5rF6cOrRJv3GsS+ujC29OizgZsm7OL3Xd/Ok79fs9/FfmkLWS8OrTGb/1
 J9t3vZ/1clx6KTJFl8xprXtksooF5VeDZL8stbEBR95Fs4HbwoqIsLubuz9lhUdJRaoEeWgQ
 rlTJ/wK48vSOZQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRmVeSWpSXmKPExsVy+t/xu7qXcptjDS516lpcuXiIyWLjjPWs
 FlMfPmGzuNK6idFi/pFzrBbnz29gt/h2pYPJYtPja6wWM87vY7JYe+Quu8Xn9/tZLVr3HmG3
 uLjiC5MDr8eGz01sHjtn3WX32LSqk81j85J6j+lz/jN69G1ZxejxeZNcAHuUnk1RfmlJqkJG
 fnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXsbVZ4vZCt4zVpzYO4W5
 gXEvYxcjJ4eEgInE2jeHgGwuDiGBpYwSb5fvYe9i5ABKSEnMb1GCqBGW+HOtiw2i5jWjxM4j
 bUwgCWGBIImFv06B2SICRhIfj99iAiliFjjEJPHmw3J2iI4vjBILri8Aq2ITMJToPdoHtppX
 wE7i3p57YHEWAVWJ+wePsYLYogIREod3zIKqEZQ4OfMJC4jNKWAr0dnazQZiMwuoS/yZd4kZ
 whaXaPqykhXClpfY/nYO8wRGoVlI2mchaZmFpGUWkpYFjCyrGEVSS4tz03OLDfWKE3OLS/PS
 9ZLzczcxAqN427Gfm3cwXtoYfIhRgINRiYf3h3pTrBBrYllxZe4hRgkOZiUR3jmmQCHelMTK
 qtSi/Pii0pzU4kOMpkDPTWSWEk3OByaYvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZ
 qakFqUUwfUwcnFINjJlqCWJp58wdpfOvN7Nw/F3s/Ytdr+HAmw/34u87h0fva2KYecB/huPv
 XA9tvb1fDHKYgr1qa16vmanXoz19p4TNyxfB4XKrsmb2dzCpr2WcELDru5XYXHmRVxfvC/1t
 PdbwK3uKvPy03YoTH9ubr1rG2vH/83rzHotd2/z/Z7Esu3P3r+zDvUosxRmJhlrMRcWJAB51
 dOn4AgAA
X-CMS-MailID: 20190919120019eucas1p10c2b11d19c92a1b1000e085a43abaece
X-Msg-Generator: CA
X-RootMTR: 20190918104705eucas1p1c01dc05bff199188677915e2bb8f7472
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190918104705eucas1p1c01dc05bff199188677915e2bb8f7472
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104705eucas1p1c01dc05bff199188677915e2bb8f7472@eucas1p1.samsung.com>
 <20190918104634.15216-8-s.nawrocki@samsung.com>
 <20190918144553.GJ10204@ediswmail.ad.cirrus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_050024_662250_99D27B8F 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sbkim73@samsung.com, patches@opensource.cirrus.com, lgirdwood@gmail.com,
 krzk@kernel.org, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/18/19 16:45, Charles Keepax wrote:
> If your removing the of_match_ptr below I think the
> __maybe_unused should be removed as well.

Good point, I will remove the now unneeded __maybe_unused as well.

--
Thanks,
Sylwester


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
