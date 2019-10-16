Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8237AD8C57
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQe6p/J76/yVLe/76gFLr+cOysDA4tLQ21z9qJYRcf8=; b=pKa8WQo9XzwUEW
	xfSudUDxvonI1jDxUWAGUsuy1j6739wo4Vs7lDzZEnNeet4Ir5pl8fRX4uwAdH1Ix9YmOTe3rRqM2
	Qach79C+i/2g8GGyyapbpsQewQKrQ0CTHb+ZWeG+Sp7/6RxVARsU7Tx/kdYVlrTjSbPEEgqFS/qDd
	mme0czjtCKWY+mjfkkjTz9nIKbHDHgaxFXJ1TW9ZVzj7guxJoHVcUfmqtSP6712VfKGLDdd1sxcg6
	l9csWmtxPChB2NVWIWsufw4GCV2m4TjbJb6kZKoB931JEW61NMMNXInFVw2n8xVl0knpwln3KXmPB
	aWZ7arI+nD7OYzCsvf9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfPb-00087h-DJ; Wed, 16 Oct 2019 09:16:07 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfPT-00086g-JU
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:16:01 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191016091556euoutp018ec5418b4c892399bc39015fa6b1523f~OFdyB1h_H2237822378euoutp01V
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 09:15:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191016091556euoutp018ec5418b4c892399bc39015fa6b1523f~OFdyB1h_H2237822378euoutp01V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1571217356;
 bh=9dORfT2C1mUG6n6ublUc6Js/kNhg/nSvlOn7r+wmFJ4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=sNdzysg8IV07QNG16Sqy/DKIqRHBTS5BGJOQaTDU2zaYxUBgBMC+HeYqZRshKMdmT
 qJ04kweMoohiCCraSv/ToLHiTYk6D4mm+VFIyn3ob4xoaKl0maAkb2Q2w9dnWGpdjz
 0joGX0IzVpR8VQYrNtOBDk+Mgd0HAV326YW6umUc=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191016091556eucas1p11bbb7d273f8cce2bcb1ec23c429781ff~OFdxpaz0_0289802898eucas1p1V;
 Wed, 16 Oct 2019 09:15:56 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 04.EB.04469.CCFD6AD5; Wed, 16
 Oct 2019 10:15:56 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191016091556eucas1p2b94b3ca327b17248afc651cda1d57606~OFdxW4yHG2333023330eucas1p2c;
 Wed, 16 Oct 2019 09:15:56 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191016091556eusmtrp2f8dc80fafe484d2653d7fb16d861d72f~OFdxWGaIA0353103531eusmtrp2g;
 Wed, 16 Oct 2019 09:15:56 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-d3-5da6dfcc2389
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 5F.FF.04117.CCFD6AD5; Wed, 16
 Oct 2019 10:15:56 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191016091555eusmtip2d51b4724fb25774ae834cd2813c1cc02~OFdwzmirq1657316573eusmtip2u;
 Wed, 16 Oct 2019 09:15:55 +0000 (GMT)
Subject: Re: [PATCH v4 1/6] opp: Handle target/min/max voltage in
 dev_pm_opp_adjust_voltage()
To: Viresh Kumar <viresh.kumar@linaro.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <83933504-bef3-a1f5-1420-d3aa2864bab5@samsung.com>
Date: Wed, 16 Oct 2019 11:15:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191014062649.oegc2rwigmdv6kju@vireshk-i7>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIKsWRmVeSWpSXmKPExsWy7djPc7pn7i+LNeh7IWaxccZ6Vov5R86x
 WvQ/fs1scf78BnaLTY+vsVpc3jWHzeJz7xFGixnn9zFZrD1yl92ide8RdouNXz0sNj84xubA
 47FpVSebx51re9g8Ni+p9+jbsorR4/MmuQDWKC6blNSczLLUIn27BK6MGTcbWApamSsOdPaz
 NDBuZOpi5OSQEDCRWPPpGZDNxSEksIJR4kn3RGYI5wujxK/5/1khnM+MEl3vp7N1MXKAteyb
 xQ0RX84osan9FVT7W0aJtv5p7CBzhQXiJXZMOsAO0iAioCXx8mYqSA2zwB4miVUT1rOB1LAJ
 GEr0Hu1jBLF5Bewk/n7ZBhZnEVCV2PnvAhNIr6hAhMTpr4kQJYISJ2c+YQGxOQUsJY437wN7
 gVlAXKLpy0pWCFteYvvbOWAfSAhcY5d41riUGeJPF4n3a15C2cISr45vYYewZST+75zPBNHQ
 zCjRs/s2O4QzgVHi/vEFjBBV1hKHj19kBbmIWUBTYv0ufYiwo8Sb57uhocInceOtIMQRfBKT
 tk1nhgjzSnS0CUFUq0j8XjUdGuxSEt1P/rNMYFSaheS1WUjemYXknVkIexcwsqxiFE8tLc5N
 Ty02zEst1ytOzC0uzUvXS87P3cQITFin/x3/tIPx66WkQ4wCHIxKPLwJPctihVgTy4orcw8x
 SnAwK4nwzm9ZEivEm5JYWZValB9fVJqTWnyIUZqDRUmct5rhQbSQQHpiSWp2ampBahFMlomD
 U6qB0dn8gmmu8mJL71VOV4yKdy2PdE/I3sfTctZzRpmO4hwrnfiQHT++XXu+tn3rrNOJPxZ6
 cBx4tahH/yfLOnsdK950veIY1/+XDZy6xE/6X/1yQPyyZ/OeeoHA+p9Zpxj5j9y5f1Oq9zTz
 VMVXGzcsZgz68NN7fnqb2IYFny5e5yp6J+PaGzCzXYmlOCPRUIu5qDgRAG3vEoJUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsVy+t/xe7pn7i+LNZj4kNli44z1rBbzj5xj
 teh//JrZ4vz5DewWmx5fY7W4vGsOm8Xn3iOMFjPO72OyWHvkLrtF694j7BYbv3pYbH5wjM2B
 x2PTqk42jzvX9rB5bF5S79G3ZRWjx+dNcgGsUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaW
 eobG5rFWRqZK+nY2Kak5mWWpRfp2CXoZM242sBS0Mlcc6OxnaWDcyNTFyMEhIWAisW8Wdxcj
 F4eQwFJGidWHJzJDxKUk5rcodTFyApnCEn+udbFB1LxmlDi/7RkjSEJYIF5ix6QD7CD1IgJa
 Ei9vpoLUMAvsYZJoarnKCNFwiEliStM2dpAGNgFDid6jfWDNvAJ2En+/bGMDsVkEVCV2/rvA
 BGKLCkRIPN9+A6pGUOLkzCcsIDangKXE8eZ9YDXMAuoSf+ZdYoawxSWavqxkhbDlJba/ncM8
 gVFoFpL2WUhaZiFpmYWkZQEjyypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzACN127OeWHYxd
 74IPMQpwMCrx8CrMXxYrxJpYVlyZe4hRgoNZSYR3fsuSWCHelMTKqtSi/Pii0pzU4kOMpkDP
 TWSWEk3OByaPvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjG3Z
 WZccbhxXOSnxOHPpW/aNSW76zY6V/1lvVCW+9bU9t3fZvwlTjqRt/hkUJNRzc2L4+taSFKmt
 AVx/rMOXreEsDOzdZ3XRd7/CDDfxLxFiCmo/41ZXPlZ3l0ie41YiX3/pwNznk+xOb2usjmjh
 YYjSeXp0vmK3bG6pjHjkT8W3DdqtEeoZSizFGYmGWsxFxYkA4b+6k+YCAAA=
X-CMS-MailID: 20191016091556eucas1p2b94b3ca327b17248afc651cda1d57606
X-Msg-Generator: CA
X-RootMTR: 20190910123636eucas1p250ec04901f227b947cc38936563f63b2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190910123636eucas1p250ec04901f227b947cc38936563f63b2
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123636eucas1p250ec04901f227b947cc38936563f63b2@eucas1p2.samsung.com>
 <20190910123618.27985-2-s.nawrocki@samsung.com> <20191002143310.GA15898@pi3>
 <ada1bb2f-a824-c34e-6561-04a35782a9b8@samsung.com>
 <20191014062649.oegc2rwigmdv6kju@vireshk-i7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_021559_943990_12486990 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 robh+dt@kernel.org, kgene@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/14/19 08:26, Viresh Kumar wrote:
> I am waiting for Andrew to send me the next set of patches. You depend
> on only one of the patches ? In that case you can just pick that patch
> from his series, keep his authorship intact and make changes from 1/6
> and send along with your series.

Yes, only that single patch. I will incorporate my changes then and resend, 
thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
