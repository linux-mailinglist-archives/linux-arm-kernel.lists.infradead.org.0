Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9635D53B4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 03:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4QJSXQkt8js6L0GD6sbW30mGa3YMlGieQ+5VkC4uDk=; b=FllgnsjSwTfSCc
	1mF+8OY898cWIbUNRXOKMg/Ke4i2k2ikDv+wkEhcmwVihoDupIXbguXikxQ5HfGGssZjKnsMpqxhO
	Sum25jpbiNtcJbgeD7HmTDvhQJDetouTSl8DPlTriMJGg6D6gKdw4lZmcRf6b+NFvlZBdAf597QNi
	HH62asTeaZztUpveEaQ8RWqU9deuJg0j8ECy0JyGjx7alhYPE96DnZfdRhDiIX7X0MiHBpbybhSSa
	v3Lxz1+xOP3YhiWcOQmquWAEJJt5UeR3Il07eCvufGAWj+FViw6bLXkGMp5tc4PDHp+QSRXEaGyLp
	43OceT/ri/n1s2E4v2nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJScp-00057Z-Iw; Sun, 13 Oct 2019 01:24:47 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJScf-00056j-92
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 01:24:38 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D1NvFc026746
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 19:23:57 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D1Nu80026729; Sat, 12 Oct 2019 19:23:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025; 
 h=from:to:cc:subject:date:message-id:in-reply-to:references 
 :mime-version:content-transfer-encoding;       
 bh=OQMsvrMqAN5cYMrSu91Pu66B0Sg+HB0aWPXdvZz2KcA=;       
 b=r+SUHFOZ26RdG6VxUf2qcKuuetu4H5Jy71X9gc45BPmyGIWDg+m2ICnyeTlBpzTaYy        
 CJkhi1YwtYAxMoW2sb6vh3kuTTCfvBmqCwee3qYMm9xq9sebu8z28QBS9rsm9eXEa51A        
 ub0qbTjI1gW3bcXOW4Eyo5fCs+2Re21sEbFuCcGQBVDxubUvTdPwINl476Z4v1Vj9XdB        
 H7VyPRNQhG6wbT+vhq1A31C3lYT6kFCpppGlzRPxPly3PC51nS0pThzV8ALxXAWBqubq        
 vWhmV++0papriWbPkg1Fa2NPp+EazD8WfSX4yTy8E/IOYfTMd4pKaHju+rZ14PSsS8WY        
 qQfg==
Received: from DM5PR03MB2684.namprd03.prod.outlook.com (2603:10b6:a03:80::16)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR11CA0039.NAMPRD11.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 19:54:39 +0000
Received: from BN6PR03CA0022.namprd03.prod.outlook.com (2603:10b6:404:23::32)
 by
 DM5PR03MB2684.namprd03.prod.outlook.com (2603:10b6:3:40::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.2347.16; Wed, 9 Oct 2019 17:46:43 +0000
Received: from SN1NAM01FT022.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e40::205) by BN6PR03CA0022.outlook.office365.com
 (2603:10b6:404:23::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:46:43 +0000
Received: from ipmx4.colorado.edu (128.138.67.75) by
 SN1NAM01FT022.mail.protection.outlook.com (10.152.65.158) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:46:43 +0000
Received: from ipmx7.colorado.edu ([128.138.128.233]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 11:06:51 -0600
Received: from ipmx3.colorado.edu ([128.138.67.74])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:30:19 -0600
Received: from ipmx7.colorado.edu ([128.138.128.233]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:11:07 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:52:43 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:43:22 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:35:48 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:31:15 -0600
Received: from ipmx3.colorado.edu ([128.138.67.74])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:29:04 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:28:06 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731623AbfJIP17 (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:27:59 -0400
Received: from mail-yw1-f68.google.com ([209.85.161.68]:45197 "EHLO       
 mail-yw1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731788AbfJIP14 (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:27:56 -0400
Received: by mail-yw1-f68.google.com with SMTP id x65so944371ywf.12;
 Wed, 09 Oct 2019 08:27:56 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])        by smtp.gmail.com with ESMTPSA id
 g40sm611863ywk.14.2019.10.09.08.27.53        (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);        Wed, 09 Oct 2019
 08:27:54 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.67.75)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=gmail.com;o365.colorado.edu; dmarc=pass action=none
 header.from=gmail.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@gmail.com
IronPort-SDR: Q4MBHyVGHK2g1dXGD02CaJAc1790zCMAU0yxWiLMk2LGZuJ26IykQQsUFALH/hnV1cbuuw+Nrw
 07h3ehrl3kSyPZdP6KKVQtp1Y8rn5VrCI=
IronPort-SDR: HHiv+3ZPN3c8uiVizMChCu8D2bpmlzbKn7+3PBH9yW7us8i9p+GcvsSDLtdAsWq55/y0s9c8WQ
 EED7Rfu5S12bWxj9Varo1iJcSR87LT7q4=
IronPort-SDR: qvy+GsvjKO+VNYqojry+D4JGxmo0Hy/eOMqKzQlcAoc4X4dcF3RUiwTrFyaN8phGHrfxAVEWYl
 6bgThebv502b+HEtQY4QRabYNC6gpuTeE=
IronPort-SDR: 0RGcK5rp4brh8jxgSa/uKGSw2dUDKAW8SfYyFj8zgPdvz9wXmJKEklNlcC1DkOU/hU1SwYffbz
 q47kHHh3/lttvV19GDNHdAfntyQdEeclc=
IronPort-SDR: LxFjVMkT8EuLk1v8MH4U7WzR8qlRZSmqjmay2dIkFpmNf3xLTTgAXOUp7nwnI4MC78IEuhqFLs
 59Svw/9KMpNoJU2g00C6MbThhk44rVuts=
IronPort-SDR: QXdVCGFfq0U5QVTIeOhIVBl3ya9ACj1K0HGYByFOftoSL8iiJQRR8X9TGNTZj8XNqydyllIo8r
 ja3yXO6Tr2Q5kJRqG5UFGdjpNQSWxViSE=
IronPort-SDR: sQsRARHM6e7icdcj/pjXVWWlU9bKpBMStEO0xXzT97PvDwMsxRYFA2pHBT4xxhbNJRtm8ohvfh
 dEK24t1WlZ4xmzuq3vVKgvr4gjRblgKS8=
IronPort-SDR: EGIbgUdvRzKQvaMq5opuPFSTjUleh/bFygeoAklo22CmkaThcEtdcaAUJMC/4NFt+UBxYNTBzI
 Ous+5FVCIIi2C3hXMVSp1GlXXeBfuGESY=
IronPort-SDR: rddW7Wm5ZnuAEp+4zddGDFIAxQgcIkN+/d3X+75NEMa3+HsOkug9eklgGeczzMJmxWJ+1BSWIp
 /wfWwnDgsB/RCEJ5xDchabPoTeUg/T27I=
IronPort-PHdr: =?us-ascii?q?9a23=3AP1Phhxd53CpYLUYjm15LNA4FlGMj4uimEi00z9?=
 =?us-ascii?q?8KlbtKb62//pPkYhyCt+s41QyBVNDB8PsBkOrf6f2+CiQLtIyMtHkSfZALTR?=
 =?us-ascii?q?IBgNUbk19FYobNQQWzZLaiY3k1Gc1DUBlu+HToeVMAQp6nOQSK+CDhiFxaUl?=
 =?us-ascii?q?23fUI9buSgFJTVipar0LK58M/Ifg9KiTGhM797MBjkqAjKrcAZjM5jJvQwzF?=
 =?us-ascii?q?7Tr2NMaqFKwjFyKFyehRv67cqrmfwru2wY87ppv4YSVKT/cuEmQKZDDTMgYW?=
 =?us-ascii?q?sy4tHmswWGURGG4GASX39TnxxDBATE6h6pO/W5+mOy/qI1kCOaaOrPaKsqQx?=
 =?us-ascii?q?G7xoE2Qy7NkhwaZmcB7T+JoJRLg+F7ikqomCRPz5Dmctu2P9MrLca/NZtSDS?=
 =?us-ascii?q?IJFo5bAjYCOb6cQaw9VbQ7MckGkZnAqQEXpjijGASwGb/Plx1Z2SbGjKIxj7?=
 =?us-ascii?q?kLKQTX8y0fM91NtS71h9PkOZsWe/in8KD53FChJ7sekX+1oMCAWTIiofDVbK?=
 =?us-ascii?q?1sQOPB7E4QTRjP0EuQ8o/4Aw++2PontnGw8OdtDvuermt2uxgguTWl25c+0N?=
 =?us-ascii?q?nwrLlE0EvBpChJ7Y9ofPTdKgYzKZbsWNMY/zyQb5J8fsEDGm5X4ywx+po55b?=
 =?us-ascii?q?Oqe3UE449knSTSMaWcXoKm/znoe9+7HxtomXhYZo6zvwmT10z8lbPOCtft7l?=
 =?us-ascii?q?QbniZv97uE/jhFn1SbooCnFcVsxn2H4DagiR/Z1qJaIVltvPGCAMUl84Julb?=
 =?us-ascii?q?Q4qVzbMSvkon3mtKuHLX0Pp7Gu0Lz/XrX0mM+1E59Eoz7UK7kkg6ndSaxwek?=
 =?us-ascii?q?BGFyDT59u80YOgvhXhSa1Qj8I8qqrW6b7Tf+Ijvu2UCh15grkt0CbjHgu3gP?=
 =?us-ascii?q?lfvF42Im5gdE6frIHJOUyNOsKhUc+EmG/8rwYOpbiOdvWpSt2FZmH6nri0KO?=
 =?us-ascii?q?U1+wtd0g011ddF+9dOB6ocJO6mQkbqr4+CVE0QLhC0zuD7Cd50yoIZXye1D7?=
 =?us-ascii?q?SENL/J7wDa4/JpKO6IY5UctDG7JvQ4tLbijn48zEcUZrLhnYAWZ3axAul8Lg?=
 =?us-ascii?q?2HbGDtjNYMHSZCvgc3QOHwzlzXeTFWbne2Gak74zw=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AOGGCnhLeaPwrkhdXVtmcpTZQNAQEmpCxExAc7o?=
 =?us-ascii?q?cul7NJdPrzosb8aRWMrfw4lkTAGJ7b4qgZ1bmeuPX6VGgJ8ZuN92oPdJVcWh?=
 =?us-ascii?q?NW7Kde10RoSIbNQUGuI/vjbih8F8NHBxd+qivjaBYMQJyjNDiw6jX6pXZaUl?=
 =?us-ascii?q?3/YARvIeGnBomAhM/lzP24+ZDYf1dEjSawM7Z/Nw6/ogiUt8VEgI0nMKspzg?=
 =?us-ascii?q?qMvnwaYelYyHllI1mehHOero/4tNYru2wY6fcg8sMFT6jgZKU/S+5TCzI6Pm?=
 =?us-ascii?q?YpodHxvB/YQwaVo3YaWWIakxxHUG2npFmyFt+5+mPwtr9a4QyBI9fTVJkSBD?=
 =?us-ascii?q?+Tyr1QVU6xsDpZaRRhy26UquYohZ1jkB6/lQ4l4IX9NdLwVrI2NuuVNZtSTz?=
 =?us-ascii?q?9bHf1sdwJmMNniVYcgUdQRAOgCtoLeukYDsQbiJVSOFby2+m5HjSOr95U/ws?=
 =?us-ascii?q?sALi3Jnwl6PvkIoXnoqP/tJpsbYPHQruGAhX2LJ7sekRzf64jJKyE+vcClTZ?=
 =?us-ascii?q?d3TpDKwxcxF1jGk2msgoL7FTaM/fsAvjOC3s9lBPK22nUqoRwhsGL//+0X25?=
 =?us-ascii?q?PSg9MY+n3NqHxQpeR9bZXwAAYzKZa5GsNJvR2YFtJ5fZgoSFFPh3oX27pbt7?=
 =?us-ascii?q?WgP3Iwxc5+3DPVReGseKexyCzPRPubHClEiEp6WZS720nswxS+k9P+B/m4+j?=
 =?us-ascii?q?Mo5mIN2pGE/jhF90Pt+/C9bMJ90Rm+0wrMyQDKs8gfeGtvkZvndZ0P6aYojr?=
 =?us-ascii?q?UXo377DhfyiR7Op/LPcH584tSo+dq3S5H2lrajHZZpgBibUOxm0oT3Saxweh?=
 =?us-ascii?q?YxX22luqfkzLT750zGSo1JgaQYm/P/iIiZCM0Jiv6GDTRljpcf+kaSSBaB4d?=
 =?us-ascii?q?okuHVbNHFMWBCazJLbYg32G+vDXciO5jbk2H8jj7iOdvX4O5vCey2Q2KekfK?=
 =?us-ascii?q?x67VZb0hZ2191E+pZIX6kIO+mgABWjncHEDhI/Lw2/yvrmD9M47I4FRGaTGf?=
 =?us-ascii?q?HGYqbC91SP4uU1KuWLIoIZpWW1J/sk4qv2hGQi0R8GfKav1IcKcn3wAPl8Ik?=
 =?us-ascii?q?uYbHatytcMGGsHpEw/GcTljVSDVXhYYHO/?=
IronPort-PHdr: =?us-ascii?q?9a23=3A0b9FgxSrzGGPGh7YnO+OB3MsaNpsv+ypbCI2y7?=
 =?us-ascii?q?9ipqxHdrmq45XlOhKPuKdz2QaaFYyO8elNzvHWuvq9Bz9I6sObvXQLYJFAEA?=
 =?us-ascii?q?UIjcwGkgBzZazNQQWzZLaiJyBvE8FLVVsj9Ha+YgBOTZymPgOL+ifvvltwUl?=
 =?us-ascii?q?23fUI9bqz1T4DIiMHly+fg8JaBeBhChje2feF+JQm7/wDcrdIfjoYnK6pjyx?=
 =?us-ascii?q?2MuHZQf/UT2WQ6P1+dkgzx4My95/sBu2wY87ppv4YIA6D7eql9U7FCFzUhNT?=
 =?us-ascii?q?I+48v3uB/fCBeV730HXGgM1xdOCA/J7Rf1DfKT+mOy/qI1kGGQPZjRdJUvRy?=
 =?us-ascii?q?6H9o5NFRTZrT08Km9gyHyJ1OYot60YgDj5riNH84LKUpPPF/FXK/C4H5tSDS?=
 =?us-ascii?q?IJFo4ZXXlbQbiBT6UoPbBfB+p38bftmlVUtBCdGBShGP6z6mJqlyCv7fw12L?=
 =?us-ascii?q?h8OznDzSMBIP4B83GOjf7zJaouVcqt3pXB/CSmDbsekX+1oMCAOjsDovGNBI?=
 =?us-ascii?q?Nvbfv42WwoKFnehAuOqdfmIg+p/eoTmW2CxPVtWLm2uksi+hFo8yOizNp8mN?=
 =?us-ascii?q?OZv6gum0rf8HR08Ks8eISRLSwzKZbsWNMY/2mHPdNvSP8gYjhnh30wwY0hhs?=
 =?us-ascii?q?KWbS9Xxr88hETlZqbeaKWCzA/IX8moCwlUlG9vRayDiy6t0G6klrKiZJWqiW?=
 =?us-ascii?q?hI/xpJuLyu/jhFn1SbooDPaqRD73+b/w+P+F7M4N0HP0AtzIOAcrV6xo8MyJ?=
 =?us-ascii?q?k9mlzbBgDyin/OnJeSZx4c0bXx7d+/eonmtKHMHqtkuijBGL0zkNXaY6xwek?=
 =?us-ascii?q?BGFyDTsfqD1Ljdvg6hWLxSlPwJmJHav8n0LJ49nrb6LgZH/tYc5S2PUyaawY?=
 =?us-ascii?q?Q12lggHVx5XR7bl6vgG1PTY+rKVKuHuE+XwAhaopKOdvWpSt2FZjDaqbnuKO?=
 =?us-ascii?q?Muo14ZyRA0y8hY/Y4RELwaPfbvD1f4r8eLVEVrGhGow+vhFNR2358fXmTKOK?=
 =?us-ascii?q?KCLafOqgHXtOc/ZeKLYIgPsTr6bfUp+q2mgXw4nAoFdLKyldsMaX++F+h7OU?=
 =?us-ascii?q?jRf3f2g9kAHGtL9gozReDnkhuDBBZcYn+zW+Q34TQ2?=
IronPort-PHdr: =?us-ascii?q?9a23=3AzbJAeRGMpAJJUSORr8MR0J1GYnF66ZnXHytQx4?=
 =?us-ascii?q?Quj69HbqWk+cqyYR7BsKw+xFacR57SrulEgrCL7fOoUjka7JKIoH0ON4ZBUx?=
 =?us-ascii?q?YVhMlF+m5oSIbNQQWzZPK/YCkzHcAEX1hgrDmgZBINQZinPweP8RjQpXZaUl?=
 =?us-ascii?q?23fUJ1c+rvHYuAk8Pl3Ovg4IDZYQhDmGixaK9/fhC7th7YucRTgIcwK6B00B?=
 =?us-ascii?q?bRpmoNZ+ME325mKEiemR3x/aLStNYru2wY87pppctBVKi/YakiVr1fCmYtNG?=
 =?us-ascii?q?Yp6cv38AXZRA2U6HYGF2gQmR1EAg7Kv3SYFt+5+mOy/qJ32Hy9BOjtU6oRQB?=
 =?us-ascii?q?2EsqxabQXTlXZeDyNnrkuPscMzrIgDqS2ZlxBh8ZyOQ4q8YakbHOuVNZtSDS?=
 =?us-ascii?q?IJVJNLFBd8Iq2bXdFRNeYuY9hIkoenvlAtsAazGRTwJL7N22ARti751vFn+d?=
 =?us-ascii?q?wkAC7n4yAvXNdUkV/SvdjJMI0KQ9y8/bitr32LJ7sekX+1oKPqcRAg+MCTQY?=
 =?us-ascii?q?NZYe/W9hM0HV3bjg6TtLDZFD2L/OEUmHeW4rF5ZMeq2n4++hp8qCX/1J18s6?=
 =?us-ascii?q?Py15gOzwHJxQhwnd8cQL/wAAYzKZbsWNNNvXmDPbd0Y5otfDpisxYd9eErqJ?=
 =?us-ascii?q?nmcgMRi84dykSGcNGNXZWj6T3afti9MSpyuWxZdIqgpjC2rRf++LHiD/e2gW?=
 =?us-ascii?q?ZGhE8n2pGE/jhFn1Sbype5W8NH2H6h9miQ3TyQ9OFdeGlvzIGAL68dnL0evY?=
 =?us-ascii?q?ILqWvHDBXOiH3ynfSuXRh9/NPw89jncIu2j7uMB6ZLoBjjOL1L+IT3Saxwek?=
 =?us-ascii?q?BGF3ak+eGCl/675UThWrR1hMU1nfD3ucr8HdxYi6erL19q3L0TtweDHmeLl/?=
 =?us-ascii?q?U/rHc7CV4ZYDGOr4r0eEv8eazANuyE02ud9VUjj7iOdvWpSt3UF3bMxeKyNa?=
 =?us-ascii?q?Y46lRbzhI018wa/Z9PF7Udder6QVSi7oaKJwIlMwGy3+fsAcl80YVbY2+UH6?=
 =?us-ascii?q?uFK/2N41qYoOkoJ+6WbYMS/jvxNqtt6/3viCohkEQGNemy3JQRYWylBPkuPU?=
 =?us-ascii?q?iDYHTtj9tAWWcHtwYzVqrr3XWNVDdSYzC5WKcx?=
IronPort-PHdr: =?us-ascii?q?9a23=3A3rysbxM2AKD2T9mKTfkl6mtUO3oLmJTReyML45?=
 =?us-ascii?q?46gq5PdaL9r8mwIhmGtr1k2UXSVMDA6/se1rSF+6u1Q2EE6IaMvDcYfZhFRx?=
 =?us-ascii?q?IJ2qB010RoSIbNQQX3efHvZi0+Ws9FUQwt5CThaRELQZ6kOg63wDX6pXZaUl?=
 =?us-ascii?q?23NV97POPwSJLV3c+8hfuv8Z/eaBkaiDOhbOF3IQ6tpArc88ga04pkb7w80h?=
 =?us-ascii?q?/Y52dPKf5by25yKFSYkg2ZhI/4tNYru2wY86Ak9stNFLv3Zb85SroKBzMgL2?=
 =?us-ascii?q?0z+Ij3rxDFVgWC/D4RVG4RnhtODFugjlmyFt+5+mOyvOoo/xC/JtPsaKkdf2?=
 =?us-ascii?q?mp3oJxcwK50R8aaWATqFrYyexa1KtkmCKtuS5tma3fSdTGUZg2NuuVNZtSDW?=
 =?us-ascii?q?AURIVqagxvJbHmMbEDILQ/LdtW9ZD2hEYToAejWSnxJvKwkw8ZiXSqgIcC1v?=
 =?us-ascii?q?UOMD7q008lRfMltmXZkNHfLLUuWNGkqcuAhX2LJ7sekX/WyovIc0kQvu29dK?=
 =?us-ascii?q?JVdvWL0kNxCQOejUislafrIRmQz88SvmXA9ttFULO/kj88pgts8ir1lv4Gsd?=
 =?us-ascii?q?jTnYdEx2Dp/Hgg6eNXbZXwAAYzKZbsDZEIriumNaovTfx5SWpYnxlm56wB5J?=
 =?us-ascii?q?CQZ2tQ8pl9ngXyYdKaWIOn2zjdePaMKwpmuH5dZ5OZg0rtr3r81LTCVJiE3H?=
 =?us-ascii?q?wvzGIN2pGE/jhFnzyM1Nm/cN1E/mj/xjyzlB7T87htehkfzq7qF8Ai7JUojo?=
 =?us-ascii?q?I8tVb5Jj/OnFSttITLL0MfovCU6/bZMpzCtq+1CKVtlwvnV8Zm0oT3Saxwek?=
 =?us-ascii?q?AQYGiex6f/jKXq5Vf4f79yjfJvvKCDlqjCZukStILpPAFu4toy1wfvInCH9+?=
 =?us-ascii?q?UWoVwLcEpmcTKFksvzCQiSGMvjNqeAsjHO2H8jj7iOdvWpG6zDIS2Ww//xOL?=
 =?us-ascii?q?dn7EhEzxAviMpS/I9QFuQZKenoCRWr5vXFEh80NRC1yO/7CdJ7k7kTQn+LHr?=
 =?us-ascii?q?THb/HXoRmD4eYoOeCAY8kYtCuuY/Qm5vu7lXYighddZqim25ILdWq1VuprOU?=
 =?us-ascii?q?SXYHfgw58BHG4GsxB4TbnCh1iLUDoVbHG3Ug=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0H8AACsG55dbemAioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWoEAQELAYIaBYFCLyqNJYVbgWqKIIoIhmcyEwEBAQEBAQEBAQY?=
 =?us-ascii?q?BARgVAgEBAQGEPoJSIzcGDgIBAgkBAQEDAQEBAgEFAgEBAgIQDQsJBiuFNAy?=
 =?us-ascii?q?DRjswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAoEBKQEBGQIBAwECDxULAQ0BGx0?=
 =?us-ascii?q?BAwIJAQEFEDsDHgIRAQUBHAcSBR2FRgEDLqQAgQM8jCUWBQEXgn4FgQSDOAo?=
 =?us-ascii?q?ZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVcErQJBB4IlhiaKa4QIG41?=
 =?us-ascii?q?7i0UtjgCKMI8GAgoHBg8jgUWBfE0jgQGCO1AQFIFPg3OKb1iBBQM7j1gBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0HkAADqEJ5dbUpDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWoEAQELAYIaA4FDLyqNJYVZgWqKIIoIhmcyEwEBAQEBAQEBAQY?=
 =?us-ascii?q?BARgVAgEBAQGEPoJSIzcGDgIBAgkBAQEDAQEBAgEFAgEBAgIQCw0JBiuFNAy?=
 =?us-ascii?q?DRjswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDxULAQ0BGx0?=
 =?us-ascii?q?BAwIJAQEFEDsDHgIRAQUBHAcSBR2EagEDHaN8gQM8jCUWBQEXgn4FgQSDOAo?=
 =?us-ascii?q?ZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVEErQJBB4IlhiaKa4QIG41?=
 =?us-ascii?q?7i0UtjgCKMI8GAgoHBg8jgUWBfE0jgQGCO1AQFIFPg3OKb1iBBQM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0EdAQBPBJ5dh+mAioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWoEAQELAYIagUYvKo0lhVmBaoogigiGZzITAQEBAQEBAQEBBgE?=
 =?us-ascii?q?BGBUCAQEBAYQ+glIjNwYOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU?=
 =?us-ascii?q?0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQE?=
 =?us-ascii?q?bHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jb4EDPIwlFgUBF4J+BYE?=
 =?us-ascii?q?EgzoKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBK0CQQeCJYYmimu?=
 =?us-ascii?q?ECBuNe4tFLY4AijCPBgIKBwYPI4FFgXxNI4EBgjtQEBSBT4Nzim9YgQUDO5M?=
 =?us-ascii?q?iAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GdAADP+51dh0pDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWoEAQELAYIagXUqjSWFWYFqiiCKCIZnMhMBAQEBAQEBAQEGAQE?=
 =?us-ascii?q?YFQIBAQEBhD6CUiM3Bg4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQ?=
 =?us-ascii?q?Mg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8VCwENARs?=
 =?us-ascii?q?dAQMCCQEBBRA7Ax4CEQEFARwHEgUdgwCBagEDHaNdgQM8jCUWBQEXgn4FgQS?=
 =?us-ascii?q?DPQoZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVEErQJBB4IlhiaKa4Q?=
 =?us-ascii?q?IG417i0UtjgCKMI8GAgoHBg8jgUWBfE0jgQGCO1AQFIFPg3OKbycxgQUDO5M?=
 =?us-ascii?q?iAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GeAAAj9p1dh0O0hNFlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWoEAQELAYIagUQxKo0lhVqBajmJZ4oIhmcyEwEBAQEBAQEBAQY?=
 =?us-ascii?q?BARgUAQIBAQEBhD6CUiM3Bg4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQg?=
 =?us-ascii?q?phTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8VCwE?=
 =?us-ascii?q?NARsdAQMCCQEBBRA7Ax4CEQEFARwHEgUdgwCBagEDHaNagQM8jCUWBQEXgn4?=
 =?us-ascii?q?FgQSDOgoZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVEErQJBB4Ilhia?=
 =?us-ascii?q?Ka4QIG417i0UtjgCKMI8GAgoHBg8jgUWBfE0jgQGCO1AQFIFPg3OKbyYygQU?=
 =?us-ascii?q?BAQE7kyIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0H8AACsG55dbemAioBlHAEBAQEBBwEBEQEEBAEBgWoEA?=
 =?us-ascii?q?QELAYIaBYFCLyqNJYVbgWqKIIoIhmcyEwEBAQEBAQEBAQYBARgVAgEBAQGEP?=
 =?us-ascii?q?oJSIzcGDgIBAgkBAQEDAQEBAgEFAgEBAgIQDQsJBiuFNAyDRjswAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEVAoEBKQEBGQIBAwECDxULAQ0BGx0BAwIJAQEFEDsDH?=
 =?us-ascii?q?gIRAQUBHAcSBR2FRgEDLqQAgQM8jCUWBQEXgn4FgQSDOAoZJw1mgTwCBxKBI?=
 =?us-ascii?q?gGHNIM8gR2CF4FEgx2CGoI/hVcErQJBB4IlhiaKa4QIG417i0UtjgCKMI8GA?=
 =?us-ascii?q?goHBg8jgUWBfE0jgQGCO1AQFIFPg3OKb1iBBQM7j1gBAQ?=
X-IPAS-Result: =?us-ascii?q?A0HkAADqEJ5dbUpDioBlHAEBAQEBBwEBEQEEBAEBgWoEA?=
 =?us-ascii?q?QELAYIaA4FDLyqNJYVZgWqKIIoIhmcyEwEBAQEBAQEBAQYBARgVAgEBAQGEP?=
 =?us-ascii?q?oJSIzcGDgIBAgkBAQEDAQEBAgEFAgEBAgIQCw0JBiuFNAyDRjswAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDxULAQ0BGx0BAwIJAQEFEDsDH?=
 =?us-ascii?q?gIRAQUBHAcSBR2EagEDHaN8gQM8jCUWBQEXgn4FgQSDOAoZJw1mgTwCBxKBI?=
 =?us-ascii?q?gGHNIM8gR2CF4FEgx2CGoI/hVEErQJBB4IlhiaKa4QIG417i0UtjgCKMI8GA?=
 =?us-ascii?q?goHBg8jgUWBfE0jgQGCO1AQFIFPg3OKb1iBBQM7kyIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0EdAQBPBJ5dh+mAioBlHAEBAQEBBwEBEQEEBAEBgWoEA?=
 =?us-ascii?q?QELAYIagUYvKo0lhVmBaoogigiGZzITAQEBAQEBAQEBBgEBGBUCAQEBAYQ+g?=
 =?us-ascii?q?lIjNwYOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBAQUQO?=
 =?us-ascii?q?wMeAhEBBQEcBxIFHYMAgWoBAx2jb4EDPIwlFgUBF4J+BYEEgzoKGScNZoE8A?=
 =?us-ascii?q?gcSgSIBhzSDPIEdgheBRIMdghqCP4VRBK0CQQeCJYYmimuECBuNe4tFLY4Ai?=
 =?us-ascii?q?jCPBgIKBwYPI4FFgXxNI4EBgjtQEBSBT4Nzim9YgQUDO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0GdAADP+51dh0pDioBlHAEBAQEBBwEBEQEEBAEBgWoEA?=
 =?us-ascii?q?QELAYIagXUqjSWFWYFqiiCKCIZnMhMBAQEBAQEBAQEGAQEYFQIBAQEBhD6CU?=
 =?us-ascii?q?iM3Bg4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7MAEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8VCwENARsdAQMCCQEBBRA7A?=
 =?us-ascii?q?x4CEQEFARwHEgUdgwCBagEDHaNdgQM8jCUWBQEXgn4FgQSDPQoZJw1mgTwCB?=
 =?us-ascii?q?xKBIgGHNIM8gR2CF4FEgx2CGoI/hVEErQJBB4IlhiaKa4QIG417i0UtjgCKM?=
 =?us-ascii?q?I8GAgoHBg8jgUWBfE0jgQGCO1AQFIFPg3OKbycxgQUDO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0GeAAAj9p1dh0O0hNFlHAEBAQEBBwEBEQEEBAEBgWoEA?=
 =?us-ascii?q?QELAYIagUQxKo0lhVqBajmJZ4oIhmcyEwEBAQEBAQEBAQYBARgUAQIBAQEBh?=
 =?us-ascii?q?D6CUiM3Bg4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7MAEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8VCwENARsdAQMCCQEBB?=
 =?us-ascii?q?RA7Ax4CEQEFARwHEgUdgwCBagEDHaNagQM8jCUWBQEXgn4FgQSDOgoZJw1mg?=
 =?us-ascii?q?TwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVEErQJBB4IlhiaKa4QIG417i0Utj?=
 =?us-ascii?q?gCKMI8GAgoHBg8jgUWBfE0jgQGCO1AQFIFPg3OKbyYygQUBAQE7kyIBAQ?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="369283360"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="287063853"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369204329"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="286731960"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369028249"
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: migi9492@g.colorado.edu
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20161025; 
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to        
 :references:mime-version:content-transfer-encoding;       
 bh=OQMsvrMqAN5cYMrSu91Pu66B0Sg+HB0aWPXdvZz2KcA=;       
 b=Ez5Pj0opTBEkIDOBOijxqvDQa2MAPSKPgzmcXCEkebC7mNe7zzxP/rbvimunrXSQtT        
 d/yS/iXBfXu3z015U74IRRAZLvP4cSw58aSZTlhFnuo611l7qMJVg1gMFBo9xhCC5rfU        
 mRic9EkIRge8x4OEt9g8ycfCFPkgbgc6fRy428DqPG6KwPFIWSlQEMIt3+ov0Yr9yNCd        
 pc7fgMDuqS/ofQlklA4D9tesRddSDMDrTG2uZFXAKPe8MsHMgkDUH0iAtG0VmqKOQXTX        
 gWQMiUEo+pbqdgRhd0ekKHEKbTLRVp9tUZaR8Uf23Qp3uoSFUT8ZmTsHqZ9URzYu7SDJ        
 YUyQ==
X-Gm-Message-State: APjAAAX/4vKPwWYIZY/B3pfr/8ZBoHeDY0vndMf1GH4aBJ2tHqyrDZYR 
 h3y61CnCYvC3aUAB0Zqyj/I=
X-Google-Smtp-Source: APXvYqwuNhTbWq/PG0RP9JpS27Oz9nkPF9Zk/MVFJHItYQxkkX5GUEHZmZZM8o80I0U9hChw4rzttw==
X-Received: by 2002:a81:5d5:: with SMTP id 204mr2951452ywf.441.1570634875666;
 Wed, 09 Oct 2019 08:27:55 -0700 (PDT)
From: "William Breathitt Gray" <vilhelm.gray@gmail.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Subject: [PATCH v17 13/14] gpio: max3191x: Utilize the for_each_set_clump8
 macro
Date: Wed,  9 Oct 2019 11:27:11 -0400
Message-Id: 84b39366ee561aa63214bf3e74716d821157c531.1570633189.git.vilhelm.gray@gmail.com
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:46:43.6564 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 25bb4091-58e3-427d-eeed-08d74ce0a5ef
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.67.75; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:DM5PR03MB2684; H:ipmx4.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: SN1NAM01FT022.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 25bb4091-58e3-427d-eeed-08d74ce0a5ef
X-MS-TrafficTypeDiagnostic: DM5PR03MB2684:|DM5PR03MB2684:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:46:43.4633 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 25bb4091-58e3-427d-eeed-08d74ce0a5ef
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.67.75];
 Helo=[ipmx4.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR03MB2684
X-MS-Exchange-Transport-EndToEndLatency: 02:08:00.7454079
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NR19BpopxhZ5kmeIdGXoyyl2RjCn6SCb2iTDfiHrHgjBH+poKwQPbaWVm2sw?=
 =?us-ascii?Q?7074EcsUqZTaLbzOURLvHO6+ZLDpLv+u9vwI58Ckb+YD/k+GLMWRK9Qtj9jx?=
 =?us-ascii?Q?8KF3Vhq10KVFn7G3K/XINtvz+R93gibvGvhwD0//qfiU9ieVY2Q6bdtCLQje?=
 =?us-ascii?Q?i/nPZA/N+EG8l+LQeBxxhqzUH8h3FEDKNSlqfvBHroRdi3Ht/16dolBD0mBR?=
 =?us-ascii?Q?KPk+jCQlN0f+u6VjiS0NLalfWsTE0BRwrDR1M6mAFuw9kbEKZwtrLFDxrar3?=
 =?us-ascii?Q?+xI1YF/YiFB854HzqPYAsVd+25IjRJ+G1lcU7PDvLc0BB6v+TRDnzIPbjm4g?=
 =?us-ascii?Q?QB61uSghfD9gQI0hqwVXQoRJeVPiT3LIKQqc3qXQ0M5X7/0zQh6dzP8iA5V3?=
 =?us-ascii?Q?OuYeqh6VrxBPXTos+tP1W48Xipb78vY/PX/h1RkIMCNuM6NO8d0p60oamovQ?=
 =?us-ascii?Q?WBMfCK3qa6qbYVxNSjUrBRcnnMeqSt8AGUlDVcR79LEKI+8bj0u7uT8qBO8E?=
 =?us-ascii?Q?h2fRNRumi4GpuRxK9r3u8I3Dm8Ja020iVYbFb08Bk2YZH26exFt92GleGnfs?=
 =?us-ascii?Q?uNIli+mGCiifLVRHojDpIHLp8vdYDTeUE1EtJk989ZlIIcw7IWIAA8cizlT1?=
 =?us-ascii?Q?ENOXVOvF3osASt6Ceufw4VCmDJWWsOdfwyzwOykim6/6f/zPquQysINSPxCq?=
 =?us-ascii?Q?j7eYIapk4RYcdDEba92N98e8Kceogr9EQzOyLj/Ii78G3V73rCTZPFA+PHY1?=
 =?us-ascii?Q?+PkqGSNLjQIWuDgZ7EUa8LwkI3Bh6LMNma0gMNxF9JMPfhqBq3AVPQ24K/lF?=
 =?us-ascii?Q?GYdqS4kAbDyWXe+kXs9Wo6uNcjkg28t9vmyIB250fCUgV7P8ojKdWJBGpaUu?=
 =?us-ascii?Q?et9ajri1wKS9GIDRgkulHbK/y5e7jm34E6+MSZS7XIMGFMuV1RSxcqHgqueX?=
 =?us-ascii?Q?wHdYxSfJxmIXdOuZqWv6y4rywNQoFsbwfsgzyvca6/ETvD2MI23egrYLZnzn?=
 =?us-ascii?Q?A5iaAuj+UvxjnopVa94JLLCCsRCypm7XHJS3h3JAkrmPVJyscZa+HPYQYgIR?=
 =?us-ascii?Q?V/0jNGRi9JpDmDJaEHi/Ldz7Y9DTvOsYLz0y/umcyHRYMxiaeOg=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_182437_377242_CA724CE9 
X-CRM114-Status: UNSURE (   5.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Mathias Duckeck <m.duckeck@kunbus.de>,
 "preid@electromag.com.au" <preid@electromag.com.au>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "morten.tiljeset@prevas.dk" <morten.tiljeset@prevas.dk>,
 "sean.nyekjaer@prevas.dk" <sean.nyekjaer@prevas.dk>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "lukas@wunner.de" <lukas@wunner.de>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>, William Breathitt
 Gray <vilhelm.gray@gmail.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace verbose implementation in get_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity.

Cc: Mathias Duckeck <m.duckeck@kunbus.de>
Cc: Lukas Wunner <lukas@wunner.de>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-max3191x.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpio-max3191x.c b/drivers/gpio/gpio-max3191x.c
index 4b4b2ceb82fc..0242c6187bf5 100644
--- a/drivers/gpio/gpio-max3191x.c
+++ b/drivers/gpio/gpio-max3191x.c
@@ -31,6 +31,7 @@
  */
 
 #include <linux/bitmap.h>
+#include <linux/bitops.h>
 #include <linux/crc8.h>
 #include <linux/gpio/consumer.h>
 #include <linux/gpio/driver.h>
@@ -232,16 +233,20 @@ static int max3191x_get_multiple(struct gpio_chip *gpio, unsigned long *mask,
 				 unsigned long *bits)
 {
 	struct max3191x_chip *max3191x = gpiochip_get_data(gpio);
-	int ret, bit = 0, wordlen = max3191x_wordlen(max3191x);
+	const unsigned int wordlen = max3191x_wordlen(max3191x);
+	int ret;
+	unsigned long bit;
+	unsigned long gpio_mask;
+	unsigned long in;
 
 	mutex_lock(&max3191x->lock);
 	ret = max3191x_readout_locked(max3191x);
 	if (ret)
 		goto out_unlock;
 
-	while ((bit = find_next_bit(mask, gpio->ngpio, bit)) != gpio->ngpio) {
+	bitmap_zero(bits, gpio->ngpio);
+	for_each_set_clump8(bit, gpio_mask, mask, gpio->ngpio) {
 		unsigned int chipnum = bit / MAX3191X_NGPIO;
-		unsigned long in, shift, index;
 
 		if (max3191x_chip_is_faulting(max3191x, chipnum)) {
 			ret = -EIO;
@@ -249,12 +254,8 @@ static int max3191x_get_multiple(struct gpio_chip *gpio, unsigned long *mask,
 		}
 
 		in = ((u8 *)max3191x->xfer.rx_buf)[chipnum * wordlen];
-		shift = round_down(bit % BITS_PER_LONG, MAX3191X_NGPIO);
-		index = bit / BITS_PER_LONG;
-		bits[index] &= ~(mask[index] & (0xff << shift));
-		bits[index] |= mask[index] & (in << shift); /* copy bits */
-
-		bit = (chipnum + 1) * MAX3191X_NGPIO; /* go to next chip */
+		in &= gpio_mask;
+		bitmap_set_value8(bits, in, bit);
 	}
 
 out_unlock:
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
