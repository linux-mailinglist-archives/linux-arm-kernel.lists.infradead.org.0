Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DE4B79BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17C65zHJonH4Lr5MCn9EQ7BQO/81YhS/5DpBBm8Ju00=; b=X1oPvb/jIxhSb/
	K8iwcRHtU0jeXH+GgUo76DbdUK+8HuxpEtZZ8fMw2iM2F3BORgW8VBMF0J3rYe9NTWo4RLwtGm+o3
	8SPD7DOpAuxb92tlhVQa9RU4K6q8lv3WfqsKZ344NM/FgsRx6k6WRJ9XEMvwAPAE1FTx88XTOmvgn
	CkDOWxbdo1goXi0jfGDcxaYJ8GQQmaw3LlRWa9Y23BcI8S0dHN72foHQslKTFlNZszralFvvHfvjj
	nUkqAfaRYXNzdWb9ChX8ahTbPiD+dpFxQD+F9/DNSK9WAqNAfVVSeKxDIlPY0IENHzO6MYZ/hrR28
	hdPACAK4TBd1oZP3WMhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvsG-0005Oy-H8; Thu, 19 Sep 2019 12:49:28 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvrq-0005OV-RN
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 12:49:04 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919124900euoutp02da21f430d3ef249a9ec4fd80cdf65c62~F19GmSzHT2693726937euoutp02G
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 12:49:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190919124900euoutp02da21f430d3ef249a9ec4fd80cdf65c62~F19GmSzHT2693726937euoutp02G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568897340;
 bh=J22Qpfy7n8Y1XcaV/gdgpvRYNyZpeC/UESeqfLD2sEM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=NoGkTjPLIGcnAWh377fCEaNMPcpjLizEIiyoh9OuDHhNDxa6fSEAIyKLVuzxM87Rf
 8gWqcLxe7l+k/o3UXL62WOJhy3HcsO2A/AkHaPbcx0KChfGDnts4plGBDJlJK07E/F
 AKJxRwAeYddikBQmDvCwEfR3BGp923EWIhezSUEc=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919124859eucas1p291f22b7c17376e4bf10628a6f54e12a6~F19FpudbC1013810138eucas1p2l;
 Thu, 19 Sep 2019 12:48:59 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id CB.5A.04374.B39738D5; Thu, 19
 Sep 2019 13:48:59 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190919124858eucas1p2cb801bef09b778fba0e4b5a83fef7203~F19E6YY6M2105921059eucas1p2B;
 Thu, 19 Sep 2019 12:48:58 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190919124858eusmtrp24513783b173cc557bd84222d9ba5e919~F19EsHn330718807188eusmtrp2H;
 Thu, 19 Sep 2019 12:48:58 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-0d-5d83793bc4d6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 44.77.04117.A39738D5; Thu, 19
 Sep 2019 13:48:58 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190919124857eusmtip20c1e572b804df4737ffb2072e0598532~F19EGM0Ab0452004520eusmtip2Z;
 Thu, 19 Sep 2019 12:48:57 +0000 (GMT)
Subject: Re: [PATCH v1 2/9] mfd: wm8994: Add support for MCLKn clock control
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <420d3c8a-a31e-1edf-3112-b9800beace1e@samsung.com>
Date: Thu, 19 Sep 2019 14:48:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919075924.GB13195@pi3>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHfc/Z2Tlax16n5ZOG1iro5o0KDlmSEDhJunyISrFc7aCW07F5
 SYMyxVBT0WBNl+A+dLFVqMvM7jFXIwvnZagVmrc+VIroNJFM23aI/PZ7/s//fZ7nDy9DSjqp
 ACY1PZNXp8vTpGIvUcu7+Y6QyNzCxPDW4TWcvctMcE3VDRSnHR4Tc/YiE+LqLB0UZ7M10twv
 ezHBmUZ7Ka7a9orgHloGaM4x+Zriil5aaK6rfobYz8oaHQVi2VP9AC0zGUvEske3Lst0tUtI
 VtFsRDKHKegIHe+1V8GnpWbz6rCoJK+Ub4uRqk76Qv6khcpH5eJS5MkA3gUPtCNkKfJiJLge
 wRvbFUIoZhDcflRDuFwS7EDwe/D4vxdaR7lIMN1FMPFpjhKKCQTG0TaRy+WL40Cbv+je4Ye3
 Qt8fwUTibgI+Gz8iV0OMI6D8bYWTGYbFUTBflOiSRXgzjLwtpVy8Gp+A6aE2N7PYB97XjLnn
 ezpnfu+2upnE/lAwc48SOBieTNSSwqVTNDTpVgl8AAxTfyiBfeGHtZkWeB0sPa1zRwZciKDs
 +RdaKCoRfLUakOCKhDZrF+U6lHRubngWJsjR0F7RT7hkwN7QP+Ej3OAN11t0pCCzUHxVIrg3
 wW+jjhA4AK6NLYkqkVS/LJl+WRr9sjT6/3sNSGRE/nyWRpnMa3am8zmhGrlSk5WeHHo2Q2lC
 zn/2YdE624peLZwxI8wg6Up2fU5hooSSZ2tylWYEDCn1Y2t3FyRKWIU8N49XZ5xWZ6XxGjMK
 ZERSf/aix1CCBCfLM/nzPK/i1f+6BOMZkI8OVZ28OTy7hYvvCd74Zf7K47Smiu0Jg3te8nOz
 dzKN2Wf6TpbHbsh7UWKOaG8JKb3UVz+u8GBw57SdCp+6EVgXW/X1ErtQeDSKW6Ea1+XtaFdV
 xhmUa31Tv2kV5+Kiv7PTSVNNPzueD/TuiwnKkAefus8drPHpWTgWU0bTyWWHF6UiTYo8Yhup
 1sj/AmOlecpjAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRmVeSWpSXmKPExsVy+t/xe7pWlc2xBheXKltcuXiIyWLjjPWs
 FlMfPmGzuNK6idFi/pFzrBbnz29gt/h2pYPJYtPja6wWM87vY7JYe+Quu8Xn9/tZLVr3HmG3
 uLjiC5MDr8eGz01sHjtn3WX32LSqk81j85J6j+lz/jN69G1ZxejxeZNcAHuUnk1RfmlJqkJG
 fnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXsbTf9YFF9grGt4fYW1g
 7GXrYuTkkBAwkZj6uZeli5GLQ0hgKaPEtontrF2MHEAJKYn5LUoQNcISf651sUHUvGaUmDPt
 FiNIQljAR2Jqwz+wQSICmhLX/35nBSliFrjEJDH/zU5GiI57jBJ3HhxgAqliEzCU6D3axwiy
 gVfATuJnayxImEVAVeLR0S5WEFtUIELi8I5ZYAt4BQQlTs58wgJicwIteHnpOJjNLKAu8Wfe
 JWYIW1yi6ctKVghbXmL72znMExiFZiFpn4WkZRaSlllIWhYwsqxiFEktLc5Nzy020itOzC0u
 zUvXS87P3cQIjOBtx35u2cHY9S74EKMAB6MSD69CeXOsEGtiWXFl7iFGCQ5mJRHeOaZNsUK8
 KYmVValF+fFFpTmpxYcYTYGem8gsJZqcD0wueSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNIT
 S1KzU1MLUotg+pg4OKUaGG3lGjVnaS4tabthbaak6MLWp5/PPmuaQmPr7G9s6k2CTifefj9v
 aX30vLzPmoRE9TU5K1PfOR307vf9H1R3NuRHwt3nOqkJAcUJcv/+bdxt7XBLtSB1w7Yddi8j
 bjYXHLn7kun56yUHlnXedr/1q2VPc8HphLxN05iCt31jNHrQzRLPajTrnhJLcUaioRZzUXEi
 AGE/0KD2AgAA
X-CMS-MailID: 20190919124858eucas1p2cb801bef09b778fba0e4b5a83fef7203
X-Msg-Generator: CA
X-RootMTR: 20190918104656eucas1p1d9cad1394b08d05a99151c4fbc9425ce
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190918104656eucas1p1d9cad1394b08d05a99151c4fbc9425ce
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104656eucas1p1d9cad1394b08d05a99151c4fbc9425ce@eucas1p1.samsung.com>
 <20190918104634.15216-3-s.nawrocki@samsung.com> <20190919075924.GB13195@pi3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_054903_088904_37BD4398 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 broonie@kernel.org, lgirdwood@gmail.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/19/19 09:59, Krzysztof Kozlowski wrote:
> On Wed, Sep 18, 2019 at 12:46:27PM +0200, Sylwester Nawrocki wrote:
>> The WM1811/WM8994/WM8958 audio CODEC DT bindings specify two optional
>> clocks: "MCLK1", "MCLK2". Add code for getting those clocks in the MFD
>> part of the wm8994 driver so they can be further handled in the audio
>> CODEC part.
>
> I think these are needed only for the codec so how about getting them in
> codec's probe?

The clocks are specified in the (I2C slave device) DT node which corresponds
to the device as a whole and to which binds the MFD driver.  AFAICT those
clocks are only needed by the CODEC sub-driver but in general such clocks
could be used to provide device's system clock used by other functionalities 
than audio.  We are doing something similar for other MFD drivers already
and I would rather stick to one pattern. IMHO it's clearer to see what
device the clocks belong to that way.

-- 
Regards,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
