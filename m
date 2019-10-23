Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70886E1D38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpZdQf4A/Pn8W8uaNjU/q8yh3CrBKnBXrNTTKrPgUuc=; b=aOUuisSak5Exim
	5Ld+7jBEvUrwWqdQwM9xcXXHVLv111+/tE5RFOU/DTd6pXWvaerBArItyTI4xMsZ4sHAT1m8F8F+1
	liaCK7DEs03JMOfqC+05TBdVQRjoJkPfRQfpQ+rQKM4OHCbIhdeDpI+ojIs5mVYTofon6n9YDqEZY
	ugMhonEByFVsJdUoIBayFCQuRYYHnaSwXUmNpn84fyQY0fEQpbix2gkP2fZlvHaF66kJAuzsysDd2
	GTABrqUb5bmtz7gU8f2JuVpCzwpUevGqHSIW/DqLTObD+OOon/HgVJ7qY93zmpR+8n2xgNPxbfkwT
	wGpEQ93dedB/ORirObRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGyv-0003kB-4a; Wed, 23 Oct 2019 13:47:21 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGyl-0003jI-C9
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:47:12 +0000
Received: from mail-qt1-f179.google.com ([209.85.160.179]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MLiPA-1ienpU41YW-00He1C for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 15:47:09 +0200
Received: by mail-qt1-f179.google.com with SMTP id o49so24507566qta.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:47:08 -0700 (PDT)
X-Gm-Message-State: APjAAAU8lJO0C28duPDFVI+0Bzof3afOeMUkkJaKecraCXbEg7zf5zaB
 LnIFUM3+RcQYx6GXc+w1POtqGNqi2sVOglNke9g=
X-Google-Smtp-Source: APXvYqz7PbcGsXeFYyvGyowaDFHTfI5KDbWhAt9grIvHRgmEgVC0Li/OGC7C/Oouqywkf4gr90cygIgYwHI1sOkpne0=
X-Received: by 2002:ac8:33d4:: with SMTP id d20mr9129615qtb.204.1571838427927; 
 Wed, 23 Oct 2019 06:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-30-arnd@arndb.de> <20191023133800.GI11048@pi3>
In-Reply-To: <20191023133800.GI11048@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 15:46:51 +0200
X-Gmail-Original-Message-ID: <CAK8P3a10MkTdStasKjGF9OBOoW3ZJ8RVD4-SxML2qhKXXciH+Q@mail.gmail.com>
Message-ID: <CAK8P3a10MkTdStasKjGF9OBOoW3ZJ8RVD4-SxML2qhKXXciH+Q@mail.gmail.com>
Subject: Re: [PATCH 30/36] ARM: s3c: remove cpufreq header dependencies
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:WO4Oja41sk/o3N+CRffKBZqvWoxXiKVtd4HPbtWpJ7ndFTowdxA
 EkRy2bxF+w0SLoIraFPqp/X4crctBKZ+wxAEOIxIQ82hMvtQTWvidi/SHKaKnfjbxO9XI1Y
 q0cbZEDx3AvD6k+TCQkYZM3zzHhbR524kL8GwUjsxCETgTOp+BV3o72rFWeUdEU3EpvJkmh
 IZUsCZJjEFNAsPMVmj1pg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IYftbkgTZX4=:2OnK9hY6+akKsgG4WDYeA3
 a9/d2CKmrE/XIGP1M93Isnp9QyVavAMaOP7vhW9ru5M0g+IB4PuFtn0w3ap5NNdLz4I9c+h9i
 7CJWcvjs/yYaMVB/CaC5725pvFs5O9Fqf7Q+VjIXMnaj3yu6Lg3qwtQwmRbw+OFqpOr92wcuI
 goYH+n+BOM0R4E16Kwb5X305RbsrNiYp6NpLfu05S7GKRc3AcWiXkI+xt06GauwHchmaGGU06
 d+8KHG5wIZVjPsip+FG2zI9plWwj00YJUKCqcAiOjnUfBWbLzEBsCtpIcV21WkgbETE8TN0a6
 pG3A0v0L/7fBPMIkM4K87TezkTZFbeFfbW2jAPNtTBvrg7jguIAXSyYETFzWGApMV19B6+gSR
 BFqtUfToMmhjoVytMkyc5rRKdzY3p1o61W2DprIgmJoHpyPforC60bGjzHiXol/GRzrb5RSTs
 fOGeYo50cXqwI2Tgn/CLGbqLZyGkE+ip8oU+crkzEikXlOSwPa+j3RGzVeT9BgtuwpoEAMRSo
 a/8AOYa9gt2kDLETSvaLsULjVQeb8hkjBEzDX2iBis4A7NsDtWH66vEOwOAaxLahFv0bB8+4P
 nAHvvGuF7f79rA5XfMuatmG5HgjxlZgGZMwTr9jIg4t/YMtqDLMqPfgC96asOqo/y8j5CCRvK
 fLXAfTWgcBJI8txJp/ivAmvuzMRy7x/lAUho8Jn962EtRrzwfnP7xMjSUDJysqpMU6jfzZAdI
 l8iG/86it6F+tol6TeSfUUT2xQSp9J0irRCL7dAAoEhIpy5TB3hszgMOwMQDJJnzn883Ug2Pi
 FWiF38oAeA3fns0ZtNoi10O1ZHskw5y05NE+nEZnwCp0DKFzdSFQPx9hmXbgidktXqz/Or9Yc
 RY2pm/WWkj+H7bJ1RaUg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_064711_706968_85BC6B42 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 3:38 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Thu, Oct 10, 2019 at 10:30:14PM +0200, Arnd Bergmann wrote:
> > diff --git a/arch/arm/plat-samsung/include/plat/cpu-freq.h b/include/linux/soc/samsung/s3c-cpu-freq.h
> > similarity index 100%
> > rename from arch/arm/plat-samsung/include/plat/cpu-freq.h
> > rename to include/linux/soc/samsung/s3c-cpu-freq.h
> > diff --git a/arch/arm/plat-samsung/include/plat/cpu-freq-core.h b/include/linux/soc/samsung/s3c-cpufreq-core.h
> > similarity index 99%
> > rename from arch/arm/plat-samsung/include/plat/cpu-freq-core.h
> > rename to include/linux/soc/samsung/s3c-cpufreq-core.h
> > index 2c7cf2665634..4d22be1031b9 100644
>
> Can you also update the header guard names to match new location?

Neither of those files had header guards, added them now.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
