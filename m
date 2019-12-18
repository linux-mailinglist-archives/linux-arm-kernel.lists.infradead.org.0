Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D01C12526A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 20:57:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ATu9Kx/kZFv/fJ0u52yeLQ+vWU5QfI4Bkw2lSfKFqhE=; b=ckcpvO8p0zwAxhxtvXYb4LH92
	s4nJFazTW/LGRFMI5yEXqSNS5AymESSMdqOtzazpl6gW/kFXbKXtkjwxF+i2Fve2NogXMSqv/cuH1
	ZYnL+IGp7elZa99JPPQHZtl1OrjM/Q/NbCDiDGukM3C2nOTbJNhlDL0/sg7O0mZE5xxiXDbU/7sH2
	PdaLTIfCBy3o1EWT0Q5O48Lr+Nb7J+kiV5VBi+J1SP/EGe1remrtVVfMI6/JeZt205xmrEykFWnFS
	Nmy7Ryx5NNMWmYN4boekU7yRZOmOH7r6E3I9SVMcY29Zes+KPoZkb8ImIfmqNTpWUUl8AC1RYbuIL
	z/kNzgRoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihfRU-0001xG-Hn; Wed, 18 Dec 2019 19:57:08 +0000
Received: from usfb19pa32.eemsg.mail.mil ([214.24.26.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihfRJ-0001w6-6g
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 19:57:00 +0000
X-EEMSG-check-017: 37275769|USFB19PA32_ESA_OUT02.csd.disa.mil
X-IronPort-AV: E=Sophos;i="5.69,330,1571702400"; d="scan'208";a="37275769"
Received: from emsm-gh1-uea11.ncsc.mil ([214.29.60.3])
 by USFB19PA32.eemsg.mail.mil with ESMTP/TLS/DHE-RSA-AES256-SHA256;
 18 Dec 2019 19:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tycho.nsa.gov; i=@tycho.nsa.gov; q=dns/txt;
 s=tycho.nsa.gov; t=1576699002; x=1608235002;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=H6V9sbb/F66JVqn0cl8Cnf1wVZ9VtFVXnUCF/07m3aI=;
 b=lSVzyD6VE9Wc/3zpfPj/F+hsfB44lIbAC6v2RUKG3q/u6SN5EQwGfCWn
 IeFhlOcdhoPWnoaaH1OD2Xq0NAakViuqRiQ5a+sLcY72efTLtP0Y7dCQ2
 DhDGprkJRDALhH4dlGOXuvUldpFdklKOj2Rc6CwelkCZMpcI3iaoLbigq
 BmZ3hE5+qCtNIHEOBVpc0eJG3biAVcExXrH5evT7PIUlYmcfeWAYuXy31
 PtqPMHK4D502dtAAMYEqEojwXCRzwup8JWbir/P+cg9Z1BeaG9dZmGxQP
 kt+7k4kF2qB5ADZXL0vDJw+0neXfvjyvgMwQsKPV96HYV3joc+O6HBiuQ w==;
X-IronPort-AV: E=Sophos;i="5.69,330,1571702400"; d="scan'208";a="36934795"
IronPort-PHdr: =?us-ascii?q?9a23=3AKQmHzhTxelP3vH6itYhlOXLUPdpsv+yvbD5Q0Y?=
 =?us-ascii?q?Iujvd0So/mwa6+ZBKEt8tkgFKBZ4jH8fUM07OQ7/m7HzZYsN3Y6i5KWacPfi?=
 =?us-ascii?q?dNsd8RkQ0kDZzNImzAB9muURYHGt9fXkRu5XCxPBsdMs//Y1rPvi/6tmZKSV?=
 =?us-ascii?q?3wOgVvO+v6BJPZgdip2OCu4Z3TZBhDiCagbb9oIxi6sAvcutMIjYd+Lqs9xQ?=
 =?us-ascii?q?bFrmVJdu9L2W5mOFWfkgrm6Myt5pBj6SNQu/wg985ET6r3erkzQKJbAjo7LW?=
 =?us-ascii?q?07/dXnuhbfQwSB4HscSXgWnQFTAwfZ9hH6X4z+vTX8u+FgxSSVJ8z2TbQzWT?=
 =?us-ascii?q?S/86dmTQLjhSkbOzIl9mzcl9d9h7xHrh2/uxN/wpbUYICLO/p4YqPdZs4RSW?=
 =?us-ascii?q?5YUspMSyBNHoawYo0BAOobOeZTspfzqV0AoxCjAQWgHf3jxztNinLwwKY00f?=
 =?us-ascii?q?kuERve0QI9AdwOvnTaotb7OqgcXu+6zrXHwzrYYvNK2zrw8pTEfgwvrPyOW7?=
 =?us-ascii?q?97bMrfyVMoFwPAllietJDlMC2N1uQNrWeb6fdrW/+qi2E9rwFxpiagx8cxgY?=
 =?us-ascii?q?TOnYIa10vE+D5lwIc1OdK4SEl7bcSiEJtLrS6WLYR2QsQ8Q2xxvisx17MIuZ?=
 =?us-ascii?q?m+fCcQyZQnwQbSa/mdfIiO4B/vTuGRIS13hH9jZbmxhA6y/FC9xuDzWcS4yl?=
 =?us-ascii?q?ZHojdfntXSuX0ByQbf5tWBR/Bg5EmuwyyP2BrW6uxcJEA0krfUJIA5z74rk5?=
 =?us-ascii?q?oTrVzDHijrmEXqlKOWdlsr+uyv6+n/frXpvIWcN45pigHlKKgum8q/Aeo/Mg?=
 =?us-ascii?q?gVQWeU5f6w1KHj/ELlQLVKiec6kq/Fv5DBOcsXvKu5Aw5R0oo76ha/CSmp0M?=
 =?us-ascii?q?gAkHUaI19IdwiLgoj0N13UPvz1Aumzj06xnDtzwvDJJLzhApHDLnjZl7fheK?=
 =?us-ascii?q?5w61VBxwoo1t1f+5JVBa0BIPL0QEPxssfYAQUjPwy7xObnFs1x1pkCVmKXHq?=
 =?us-ascii?q?+ZLKTSvEeS6eIrPeaNa5EauTbnJ/c++v7hkGU2mVkefamuw5sac3S4HvVgI0?=
 =?us-ascii?q?WEbnvgmNYBEWEWvgUgSOzmkkGNUTlWZ3yqRaIz+ik7CJ66DYfEXo2tmKKO3D?=
 =?us-ascii?q?ulEZ1MZ2FLEVGMEXHmd4WeQfgDdTydLdV8nTAeUrihUYAh3wm0tADm07pnMv?=
 =?us-ascii?q?bU+ioAuJ35yNd14vPcmAox9TNqFcSd1X+CT2VukmMPXT8207h1oVZhxVebza?=
 =?us-ascii?q?h4n/tYGMRW5/NIVAc6OpncwvdgC9/sRw3Bfs2GSEq8Ttq6BjExS8o7w8USbE?=
 =?us-ascii?q?ZlB9WikhfD0jKoA7APkbyLBYY48qTd33jyOsZ9z2zJ2bIlj1knRMtPKGKnir?=
 =?us-ascii?q?R+9wjVG47GjUGZm7y2eqQb2S7H7H2DwnaWvEFETA5wVr3IXXIYZkvRq9T2/F?=
 =?us-ascii?q?jCQ6WqCbs9MgtB1c+CKq1UZd3vllhGQPbjONLDY2O+gWuwBBCIxq+SY4ruYW?=
 =?us-ascii?q?kSwCLdCE0cmQAJ4XmGLRQ+Bjumo2/GFjxuEk/gY1nt8elxr3O3VFE0zwCUb0?=
 =?us-ascii?q?1gzLe1+xgVheCCRPMXxL4LpCAhqzBsFlanw93WE8aApxZmfKhEe9w9+0tH2H?=
 =?us-ascii?q?natwNjJJygKb5thloEfwRwpUPu2A19Cp9cnsgysHMq0A1yJLqD31xfcTOY3Y?=
 =?us-ascii?q?v9Or7JJWno+hCgdarW1kvC39aM4KgP8/Q4q1TlvAGmDEYi9G9n09ZN2XuG+p?=
 =?us-ascii?q?rKFBYSUY72Uksv7xh1vazaYi0g54PPznBsKrO7sjrZ1N0zHuclzQygf9hHOq?=
 =?us-ascii?q?OeCADyC9EaB9SpKOEynlipdgwLMftM+64wO8OpaeGG2KuxM+Zmhj6mjHlI7J?=
 =?us-ascii?q?pn3UKR7yB8UPLH344Zw/GE2QuKTzX8g02kss/pgoBIfyodHm2jySj4A45RY6?=
 =?us-ascii?q?lycpgLCGq1I8243NN+h4XzVH5e7F6sHUkG2NOveRWMdVz9xg1Q1UUPoXC9hS?=
 =?us-ascii?q?S4yDl0mSkzrqWDxCzO3/jidB0fN25QWmZil1jsLpavgtAaRkeoawwplRuj5U?=
 =?us-ascii?q?rg26dbo6F/JXHJQUhUZyj2M31iUqyou7qAZs5P74kosT9WUOSnel2aTKTyox?=
 =?us-ascii?q?4E3CPiBWdewyo7dz6ysJXjgxN6kH6dLGp0rHfBd8BwxBPf5NjGSfFMwDUJXj?=
 =?us-ascii?q?V3iT7RBlWnJdap59CUm43fveC5UmKrTodTfjXzzYOcqCu74nVnARilkPCpmd?=
 =?us-ascii?q?3rCxI60TLn19luTyrIqgvzb5Lx2KSgNOJrZFVnBFj568BiAIFxjpMwhI0M2X?=
 =?us-ascii?q?gdnpia4WAIkXztPtRbwq/+d2YCRT4RzN7I7gjl3FNsLmiQy43lTHqR2NduZ9?=
 =?us-ascii?q?6/YmkOwCIy89hKCLuI7LxDhSZ1uEC4rQPNbvVmnTcS1+Eu6HgEjOENogYtyT?=
 =?us-ascii?q?+dAr8KF0lCISPsjwiI78y5rKhPZmavdryw1FFkkt26FrGNvBxTWHbjdZc+By?=
 =?us-ascii?q?N/8sJ/MFfU2n3p9o7kYMXQbc4UthCMiRjAjPNYKJYwlvoMmCpmNnjxvXwjy+?=
 =?us-ascii?q?4nkxNu2Yu2s5SAK2Vo5Ki5GAJXNiXpZ8MP/THglbhRntyM0ICpH5VuADMLUY?=
 =?us-ascii?q?DnTfKvFzISuvDnOBiUHDIgrXebHKLVHRWD50d+s3LPD5erOmmWJHkd0NVtXw?=
 =?us-ascii?q?OSJFdfgA8KRzg1hJ05GRqvxMP7cUd1/Cwe5ln9qhFU0OJnKwH/UnvDpAevcj?=
 =?us-ascii?q?o7UpyfIwRZ7w5Y4UfaLNKR7vhpEyFD/p2hrReNKmyYZwRJC2EEQUiEB1HlPr?=
 =?us-ascii?q?mz6tjM6emYBuyiL/TQZbWCs/BRV/CNxZi3yItp4y6MNtmTPnllF/A73FBMXX?=
 =?us-ascii?q?V5G8XZhjUPTSMXmjnOb8GFvhe8/DN4rsSl/PTsQgLv6pOFC6FOPtV35xC2na?=
 =?us-ascii?q?CDOvaThClnNzlYzY8DxXjPyLgcx1MdlyFudyOqEbQFtC7NUafQlrVQDx4BZC?=
 =?us-ascii?q?N5LNFI4L4k3glRJc7bjcv41rxigf4zDVdFVUfsms6uZcwNLGG9ME3ICFyXO7?=
 =?us-ascii?q?SBID3B29v3br+kSb1MkOVUsAW9uSqUE0/nMTWOjD3pVxGpMeFRkCGbJhteuI?=
 =?us-ascii?q?e8chdiE2TsUczpYAWhMNBrlT023aE0hnTSOG4ALzh8aV9Nrr6X7S9Cn/V/AX?=
 =?us-ascii?q?dB7mdhLemFnSaU9O3YKpcQsft2DSV4jeNa4HImy7RL6CFIXuB6mCzXrtR2uV?=
 =?us-ascii?q?GpjvGPyiZ7UBpJsjtLgIOLvUJkOarH8plMQ3nE8AgJ7WqKDRQFutVkBcP1u6?=
 =?us-ascii?q?BUy9jPkrn+KDZE89LI48QcA9LYJ96AMHokKRDpAiLbDBMZTT63MmHSn1ddkP?=
 =?us-ascii?q?aU9n2aqpg6q4Xsl4EUSrBBSlw1F/UaCkt+EdwMO5h7RC8rkbmejMQQ/3qxsA?=
 =?us-ascii?q?HRRNlGvpDATv+SBfTvKDCEjbhLfhcIwq33LZ4VNoLl30xvcUd6nIvUFErKR9?=
 =?us-ascii?q?xNoTNubhUyoEpT9HhyVGoz21jqagm1+n8cCea0ngIqigt5eekt8Dbs41EqJl?=
 =?us-ascii?q?vFvScwi1c+lsn4gTCLcT7xMKexUZhTCyrzqkcxL5f7TBhuYA2skkxrKi3ES6?=
 =?us-ascii?q?hSj7R+b2BrjhHTuZ9VFf5bV61EbwcaxeuLaPUwzVRctiKnyFdc5eTbDZtilQ?=
 =?us-ascii?q?0qcYOjrn9bxQJjY8A6JbbKKKpK0FdQnKSOsTGs1uwrxw8ePUkN+nuIeCEUoE?=
 =?us-ascii?q?wIKqUmJy2w8+xt7wyChyVMeGwVW/olrPJr+VgwO+CBzyL7z75DMVq9N+KFL6?=
 =?us-ascii?q?yHpWfPiNCHQkgz1kMUkElF5aJ60cA5c0qbT0ov1qeeFwwVNcreLgFYd9Fd9G?=
 =?us-ascii?q?DdfSuVr+XNzox6P5+nGuDrU+COrqAUjVygHAozGIQM9MsBFIG20E7ENcfnMK?=
 =?us-ascii?q?IFyRI16QTvJVWFCulJeR2SnDcfuc6/1p533ZJBKTwGH2V9Pju45qzNqg8pnv?=
 =?us-ascii?q?WDRtE2bWkeXoceMXI2QsK6kTZDv3tcFDm3zv4ZyA+a4j/4pyTQCiT8btV7ZP?=
 =?us-ascii?q?eMeRxgEcy59ish86WtjV7X847eJ33hNdh4vd/O6OcaqIycBPNPV7V9tF3cm4?=
 =?us-ascii?q?ZATXywT2HPCcK1J4T3a4Q0adz0C3C6UkGwij4sV8f+IsytLqaRjQH1XoZbrp?=
 =?us-ascii?q?Ob3Cs4OM+jGTERBQ1wq/sA5K1ifw0DZYQ0YRryuwQ5Lay/Lx+S0s+yTGa1NT?=
 =?us-ascii?q?tWU/5fwP2+Z7xWySosc+C7xGI6QZEgyum76E0NS48QjhHY2/mjY5JTUSzyGn?=
 =?us-ascii?q?xGZwXPvjA1l2lnNuY82Ocw2g7HvkcGPD+WbuBpb3ZEv94kD1OIPXp2EnY4R0?=
 =?us-ascii?q?ObjYfb5Q6sx6oS/yxTn9ZV1e1KrmHyvpveYDK3RKymspHVsys7bdg6uK19K5?=
 =?us-ascii?q?fjIsWcuJPYgDPfUMqYjgrQeSq3B/dL0vJNLCteQ/5W0TUsPcEWtJsH41c9X8?=
 =?us-ascii?q?E9IKJnDKgqu6DsaDx4ACpUxigcAcfI5DEej/306brYkgyMap1qZAQJrJhYkP?=
 =?us-ascii?q?McVSBsay8TraPlUJ/ZwSvMY3INKQMf6kxn7Rgen4tweajp7cLtQZtLg2pfqP?=
 =?us-ascii?q?d5eijGDJ9l8x38UG7AxRDZTvqm28mu2QRb1rq419gdVxlXE0VRx+9K0EAvLe?=
 =?us-ascii?q?czY+MSt4jL9DmJdl7+tUrpye27NB9Qz9HZcxvzC4+P/T7+Wysdv3sVRpJLwV?=
 =?us-ascii?q?nbFJIPg0x4bromoBNHJ4XwPg605TsjwY1yWb2xVdyqwVsjhXIHQTq6VdtHF+?=
 =?us-ascii?q?xi9lnQXXctN5Ksr5PsINNWS29M+ZuQrX9dkUNwI2i4z4ZRL4dG5TtaGHAFuz?=
 =?us-ascii?q?KRptq9T4td2NF3J54KPtp7/Xz6HekMbIKWr2c3tbup1H7H+hg9tku3wHO4HK?=
 =?us-ascii?q?ruC6pw+2AOFwRhHHiXsE4xCOow9XmaplnWrnh38v1dC7zJil9+9nI1NJ1IBD?=
 =?us-ascii?q?9M1HbtD1lpVnRAqO5aLaXZb4QISfQ0ZTesNgY4GPpg1FaA5kF1m3i/ZDZ94E?=
 =?us-ascii?q?8SwynAW0ERXCIWj633kCZW/tmuJDsHULpTZDArZmHCMQ3N3WhyvR1fYkxuE7?=
 =?us-ascii?q?0dBttf/rgdld9R5sfqREKoJDsAVRokNw5+2OcJ0QYJskyddDubBw20afHKth?=
 =?us-ascii?q?BmVceYqtWkKuzw5htBh5n8sOEgsa4EQjfuzQ+kRN3F6YX7qsGNs0+DZY/4Ou?=
 =?us-ascii?q?unbHnZRSLQix2qnrclF9/B+C2FdEJgJoN1xDIEaJzlGGiDaQ9LPa0WD0pSUa?=
 =?us-ascii?q?Rrb5NNpeUMI4dGcaME4udIAQidRwinTI6qq+NcL037Qz3bIiTH9faw98ab0r?=
 =?us-ascii?q?3ZTaDMa8WHwHCPF712OpM85TTyELDs+YZE/wz93fI7sgtfQELFexqcsNDoIA?=
 =?us-ascii?q?9DsMyrbEikpIA1GTrQDL95in+rzUZFIY5faCSx/YVQ85hZ4Wv+Te9imhz4uf?=
 =?us-ascii?q?Zf5pF/4ok+/r5txN3xLq6UIvNf5wsvOB+eCx92vq8sC2hjSnoZNvULKfz5fq?=
 =?us-ascii?q?kDi83q7eftGPpExgeS/rliddbfJ0zH0vK6AzWYRA0MyBwNshYGPwCc0LiDgK?=
 =?us-ascii?q?YyRsG787uqknkx6kSze0ZVhItm4p2Jr+/R/r7a?=
X-IPAS-Result: =?us-ascii?q?A2BjAgB2g/pd/wHyM5BkHAEBAQEBBwEBEQEEBAEBgXyBd?=
 =?us-ascii?q?oEYVSASKoQEiQOGWgaBEiWJapFFCQEBAQEBAQEBASsMAQGEQAKCPTgTAhABA?=
 =?us-ascii?q?QEEAQEBAQEFAwEBbIU3DII7KQGCegEFDhUVLRQQCxgCAiYCAlcGAQwGAgEBg?=
 =?us-ascii?q?l8/AYJSJQ+uDYEyhA0BAYFAgzqBQYEOKIlPgmN5gQeBOAwDgl0+gmQDhHKCX?=
 =?us-ascii?q?gSPeocURpc1gj+CQ4RujlwGG4JDdYcEkBItjiGBRocLlA4igVgrCAIYCCEPg?=
 =?us-ascii?q?ycJFjEYDY0eFxWIT4UIAVQjAzABjywBAQ?=
Received: from tarius.tycho.ncsc.mil (HELO tarius.infosec.tycho.ncsc.mil)
 ([144.51.242.1])
 by emsm-gh1-uea11.NCSC.MIL with ESMTP; 18 Dec 2019 19:56:39 +0000
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
 by tarius.infosec.tycho.ncsc.mil (8.14.7/8.14.4) with ESMTP id
 xBIJtrkd126229; Wed, 18 Dec 2019 14:55:54 -0500
Subject: Re: [PATCH v4 1/9] capabilities: introduce CAP_SYS_PERFMON to kernel
 and user space
To: Alexey Budankov <alexey.budankov@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>,
 Serge Hallyn <serge@hallyn.com>, James Morris <jmorris@namei.org>,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 Casey Schaufler <casey@schaufler-ca.com>, Robert Richter <rric@kernel.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <e0cb2b8d-e964-bc23-bf80-58d7ac4ed6f1@linux.intel.com>
From: Stephen Smalley <sds@tycho.nsa.gov>
Message-ID: <c10d7785-1e75-4503-3560-99ab9f845a11@tycho.nsa.gov>
Date: Wed, 18 Dec 2019 14:56:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <e0cb2b8d-e964-bc23-bf80-58d7ac4ed6f1@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_115658_295915_9B520488 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [214.24.26.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 FROM_GOV_DKIM_AU       From Government address and DKIM signed
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
Cc: Song Liu <songliubraving@fb.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Stephane Eranian <eranian@google.com>, Jiri Olsa <jolsa@redhat.com>,
 Andi Kleen <ak@linux.intel.com>, Igor Lubashev <ilubashe@akamai.com>,
 oprofile-list@lists.sf.net, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/18/19 4:24 AM, Alexey Budankov wrote:
> 
> Introduce CAP_SYS_PERFMON capability devoted to secure system performance
> monitoring and observability operations so that CAP_SYS_PERFMON would
> assist CAP_SYS_ADMIN capability in its governing role for perf_events,
> i915_perf and other subsystems of the kernel.
> 
> CAP_SYS_PERFMON intends to harden system security and integrity during
> system performance monitoring and observability operations by decreasing
> attack surface that is available to CAP_SYS_ADMIN privileged processes.
> 
> CAP_SYS_PERFMON intends to take over CAP_SYS_ADMIN credentials related
> to system performance monitoring and observability operations and balance
> amount of CAP_SYS_ADMIN credentials in accordance with the recommendations
> provided in the man page for CAP_SYS_ADMIN [1]: "Note: this capability
> is overloaded; see Notes to kernel developers, below."
> 
> [1] http://man7.org/linux/man-pages/man7/capabilities.7.html
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>

Acked-by: Stephen Smalley <sds@tycho.nsa.gov>

Note for selinux developers: we will need to update the 
selinux-testsuite tests for perf_event when/if this change lands upstream.

> ---
>   include/linux/capability.h          | 4 ++++
>   include/uapi/linux/capability.h     | 8 +++++++-
>   security/selinux/include/classmap.h | 4 ++--
>   3 files changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/capability.h b/include/linux/capability.h
> index ecce0f43c73a..883c879baa4b 100644
> --- a/include/linux/capability.h
> +++ b/include/linux/capability.h
> @@ -251,6 +251,10 @@ extern bool privileged_wrt_inode_uidgid(struct user_namespace *ns, const struct
>   extern bool capable_wrt_inode_uidgid(const struct inode *inode, int cap);
>   extern bool file_ns_capable(const struct file *file, struct user_namespace *ns, int cap);
>   extern bool ptracer_capable(struct task_struct *tsk, struct user_namespace *ns);
> +static inline bool perfmon_capable(void)
> +{
> +	return capable(CAP_SYS_PERFMON) || capable(CAP_SYS_ADMIN);
> +}
>   
>   /* audit system wants to get cap info from files as well */
>   extern int get_vfs_caps_from_disk(const struct dentry *dentry, struct cpu_vfs_cap_data *cpu_caps);
> diff --git a/include/uapi/linux/capability.h b/include/uapi/linux/capability.h
> index 240fdb9a60f6..98e03cc76c7c 100644
> --- a/include/uapi/linux/capability.h
> +++ b/include/uapi/linux/capability.h
> @@ -366,8 +366,14 @@ struct vfs_ns_cap_data {
>   
>   #define CAP_AUDIT_READ		37
>   
> +/*
> + * Allow system performance and observability privileged operations
> + * using perf_events, i915_perf and other kernel subsystems
> + */
> +
> +#define CAP_SYS_PERFMON		38
>   
> -#define CAP_LAST_CAP         CAP_AUDIT_READ
> +#define CAP_LAST_CAP         CAP_SYS_PERFMON
>   
>   #define cap_valid(x) ((x) >= 0 && (x) <= CAP_LAST_CAP)
>   
> diff --git a/security/selinux/include/classmap.h b/security/selinux/include/classmap.h
> index 7db24855e12d..bae602c623b0 100644
> --- a/security/selinux/include/classmap.h
> +++ b/security/selinux/include/classmap.h
> @@ -27,9 +27,9 @@
>   	    "audit_control", "setfcap"
>   
>   #define COMMON_CAP2_PERMS  "mac_override", "mac_admin", "syslog", \
> -		"wake_alarm", "block_suspend", "audit_read"
> +		"wake_alarm", "block_suspend", "audit_read", "sys_perfmon"
>   
> -#if CAP_LAST_CAP > CAP_AUDIT_READ
> +#if CAP_LAST_CAP > CAP_SYS_PERFMON
>   #error New capability defined, please update COMMON_CAP2_PERMS.
>   #endif
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
