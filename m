Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16375D5457
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 06:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ck902hxlhotWeJ2De+2HZAFLt0ggeHj6fzktFDWFSjk=; b=RikV4UHyXmDV/y
	RokgVTjOTYeQjNvmldV2JA7gVNweOdHDndN/jnhUfjHr8m/kfnGM/EvOBlLl/flosSGP+ChiOFgvQ
	QRPEu2qVcFHPgipX33qav0ouTPpbYpY9SsgLjEHvlmWDSPXqPWrICfLZZdO0vyJJZit15JhxZtXJD
	naoaOdptCqfshz8NkQUu+vlVt4mrdWf10ZYeYxTAwmKq3DIPRpU5ivHOb2FVc4PFuZhqi04vfxyU9
	l5mlVle6YT5ewkCChB2OUtqSYFS/BTpZXU8I0DW3VsBF6eUGGCOtFrEutHaIWCb2sD7iOKxtgUbCg
	gh8MdgySBBP2Ao/Mmgsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJVWQ-0003Fw-0G; Sun, 13 Oct 2019 04:30:22 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJVWD-0002kI-Sb
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 04:30:11 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D4U4T6003639
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 22:30:05 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D4U3vB003602; Sat, 12 Oct 2019 22:30:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=5eyqqcNyRkIYJ/KfstQRnTPLVlNRh+PVIx0mtGqGQzI=;
 b=WycN9nMEm1Z1hwXQ6EnSR9nzH8nWxZAiSQQX0AJ/m1db544ssaE+cNclh6kS79KwtPqW
 qkyCY4KWmDxR2QHbMeRKRSas2ynmKu4pCpSiDEIs4uh9i3sE3jUTsO8MJhyolRtylsx9
 1n9MnIKyyis6+RkLF18ox55DJgLzUNhl2YWcmiClaqUJoiXpm2VIx5GhE3QsHpcZAuiW
 vSgqjdjeAMa+IZ+p3ceeyOs22az2yH9LqV0e1PUAzPercLk57ONTVESeFfv7Hos5PNMv
 aJRGAHWYW/0KKLFwHHg3a3tYJsncOnlDBsFxVPuKg3Z3jsfNd1hIYe5lQJdL6NHRo90k OQ== 
Received: from DM6PR03MB4252.namprd03.prod.outlook.com (2603:10b6:a03:80::43)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR11CA0066.NAMPRD11.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 17:44:04 +0000
Received: from BN6PR03CA0103.namprd03.prod.outlook.com (2603:10b6:404:10::17)
 by
 DM6PR03MB4252.namprd03.prod.outlook.com (2603:10b6:5:9::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.2347.16; Wed, 9 Oct 2019 17:28:40 +0000
Received: from BY2NAM01FT031.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e42::201) by BN6PR03CA0103.outlook.office365.com
 (2603:10b6:404:10::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:28:40 +0000
Received: from ipmx7.colorado.edu (128.138.128.233) by
 BY2NAM01FT031.mail.protection.outlook.com (10.152.69.208) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:28:39 +0000
Received: from ipmx8.colorado.edu ([128.138.67.85])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:47:26 -0600
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 10:21:00 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:03:08 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731707AbfJIQDG (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 12:03:06 -0400
Received: from userp2130.oracle.com ([156.151.31.86]:33332 "EHLO       
 userp2130.oracle.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731452AbfJIQDG (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 12:03:06 -0400
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])        by
 userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99Fj0MG178749;     
 Wed, 9 Oct 2019 16:02:57 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70]) by
 userp2130.oracle.com with ESMTP id 2vejkunqy3-1 (version=TLSv1.2
 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); Wed, 09 Oct
 2019 16:02:56 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])        by
 aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99FhBiM184467;     
 Wed, 9 Oct 2019 16:02:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75]) by
 aserp3020.oracle.com with ESMTP id 2vhhsmudke-1 (version=TLSv1.2
 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); Wed, 09 Oct
 2019 16:02:55 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26]) by
 userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x99G2qL5007340; 
 Wed, 9 Oct 2019 16:02:53 GMT
Received: from dhcp-10-159-237-174.vpn.oracle.com (/10.159.237.174) by default
 (Oracle Beehive Gateway v4.0)        with ESMTP ;
 Wed, 09 Oct 2019 16:02:52 +0000
Authentication-Results: spf=none (sender IP is 128.138.128.233)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=oracle.com;o365.colorado.edu; dmarc=pass action=none
 header.from=oracle.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@oracle.com
IronPort-SDR: DwaAR3rofWtlSRGoVwdNYXF9gl2XhwHKgRy7NITTLlWppKR52v2BPBcGxIiy7obF8xjYxAm7ry
 ak0osa3dG/HPmS5BV0OoxkKNGU3iPF098=
IronPort-SDR: lBr7SLwIjxYuYO2yGerZUW5vCS2nvPL4F13hX/Dh14kJXNwUapElLpsMX+oInI2JpiVKyIoc4w
 BRmw3u80OwglIvaVBhcZzkkueNdgmxiVo=
IronPort-SDR: 6c5MZScqjz1LFwjCqpVOU/+2UQ/NRDI6Y83sr/yJp4BIspP61VGxeyN1+SJ6YXf1QPmeRoMGM5
 mwFcHTkXQyllppMgJnlgtzJC2OCr7E3E8=
IronPort-PHdr: =?us-ascii?q?9a23=3AMWhC8hd8c8hnz3MouWxzgA+blGMj4uimEi00z9?=
 =?us-ascii?q?8KlbtKb62//pPkYhCBt+s41QyBVNDB8PsBkOrf6f2+CiQLtIyMtHkSfZALTR?=
 =?us-ascii?q?IBgNUbk19oDJuCE0TwKPOsZCs/T4xCAUR49XO2OlQdSo7iYBWA6na5pWx3eF?=
 =?us-ascii?q?3lOAR4POnzEYPJx5b/2fq1/tWBKwBFnyG0br43LRn+/03dv9UbydkqL6c0x1?=
 =?us-ascii?q?7Xr2FTeuNQjTEgJFTWhRvk4tb14JkroUEy8/km8dJNV7m/Y7UgQPQKRD8hNX?=
 =?us-ascii?q?w44tGuqQPKSxCB62FZX2MdlRZJBQeWpAqvVZDrqm6g7rMsnXHKeJWrHtVWET?=
 =?us-ascii?q?6iuvpmWQbxgwEWDT0YwUOQqcJrkJthpi6ZgyJ75bTUI7mrFeome7/yZPwjV0?=
 =?us-ascii?q?sUDaMzHyYUPZK3SdoJKscEZNQBr5bNngUjqyCEVA++JLPp9S96r37N5JQKi8?=
 =?us-ascii?q?0DVgSf0AZ9Q44Vq335797TP6MSD+OOk/jr0in7dswzu3/k65njQ0wCnvSgTY?=
 =?us-ascii?q?gqSOrb7EQVNDn+h07KuIrgHC7Jzs8ViGm3wst7Cf+v2m98sCwqoAWT3eB8r6?=
 =?us-ascii?q?vJl4UR8EzV8T5pkeNXbYS+GWt9QP21AZpL6WKgNK9YG5MlUzw1lAQ17q87n5?=
 =?us-ascii?q?6/Jhk1w5Em7BrWcsGldIm4+he5aseBfBh4qSlcY5KnjCSb7Emfr4+0SPK7yV?=
 =?us-ascii?q?RGrCdst9CPl0JOz0fY58WWbeAnpE6zgyevhiTK1LlJeHgJvLjjJoQq5r1tyb?=
 =?us-ascii?q?01jXruJSLYlluprKiNK30C3/bNiazuQI/Jj7+jBrAz0iLdFooxuuywWu1jLj?=
 =?us-ascii?q?ksRG6Q3uK4+Jf4013HeKhpgaYEyavCvrbWfMQ6l6PkBzZ33qJ9zTaFCGb+05?=
 =?us-ascii?q?w/pCxSZAENaFeGlY/vI1bUPLXiAOyih0j5iD5w3KOcZO/IH4nNI37fkbzoYb?=
 =?us-ascii?q?d67QtmxREuycxEucIGD6FHK/X3XVX4uNueAxMkYES4wOfiXc10zZhWGXmODa?=
 =?us-ascii?q?mQLL7IvBeW6/guLeiBaM5duDv0J/U/of+7pXgjkFQZcO+i2p4a?=
IronPort-PHdr: =?us-ascii?q?9a23=3AKl8aqBYxcVvUwoehdUp8Ilr/LSx+5ufYHS8wr7?=
 =?us-ascii?q?c5grZTe7ii+JK8YBKN+6A03xfACJ/A4rdfi+OM7v6zEWdV+5uFuWAPfNtWWh?=
 =?us-ascii?q?sMmcgazEQsVcmfAEb/IbjhaClpVMQXT0Jv/XywLQAHUNr5Lw+aqXb6v1twUg?=
 =?us-ascii?q?/yOwdvK+L+F5Wa3Yy5zee3s8+bZghTnzOybPZzIF3k5QnYqsRe08NnK6M8jw?=
 =?us-ascii?q?XEuGBJfOIelytpIxeJkg7494Ks+9YxlkYYsPUn68NGTeDmbrw1Be4QBzMgL2?=
 =?us-ascii?q?0z+Ij3rxDFVgWC/D4RVG4RnhtODFuN90TxWY3p93Gi77s4gHnfZZClKNJ8Uz?=
 =?us-ascii?q?T3sqp6UQbjrjY9NB8I0ib0hNdstZhdnCqFmRhZ+Y6XWL+0JKJ7YozEUuoIZD?=
 =?us-ascii?q?8SO6QZXXl+E4iaPo0qIu9YD79YsLnE+XYIliHvAxuMVOXQ2g1hh0TP5J1i+s?=
 =?us-ascii?q?ZmFFjK1lF8Q8kVuVmXp/P+MKdMUtvqnYrX0Q3aUJY0kS7++aP5LjMepN2cZ+?=
 =?us-ascii?q?hJUcD0xHMMLTjMlQ+Br4nGIm+N/fw2skS2zvE8SOL+ijU8hlpznwS04ZcJqI?=
 =?us-ascii?q?nYgYYv1kHA7jUopeR9fNvpbUhaQs+1EYAO9BuZE6UvEsQyHjxEmike2IAguZ?=
 =?us-ascii?q?rhTRcBzZUMwxfGVt6AcriQ50jddfbMDjdV30t+WKq0tT+v8HfFqKXibcat0l?=
 =?us-ascii?q?pIowNgm5rthDMVjBfe59mgUaEn91X7yBbe8xntsuwdGX0dh5LWMZUFweNvsb?=
 =?us-ascii?q?wvj2n4EwH4hhrWi7TLTmMB5I3Ko+3FWJrPhqCtCMgsqSLaHLsOusPkCL8kAy?=
 =?us-ascii?q?oVWWO8/+CQ/qbN7XPBXZZF1c9tkLLXlpyDJeUqq/O9Oi1Z9tgFyyy4Xm+lmP?=
 =?us-ascii?q?MhyCxPfxpVPROdiI7xPEvSZer1Fuq7nwG0mSxwlKqcbJT8HpXAKGTCm779fL?=
 =?us-ascii?q?F7rnRR0xc30csBt8BRGvcKJ/b0QEb9s5rVAgJqewC3wuOyENxmzcteQmOABK?=
 =?us-ascii?q?aFLbnf+UGF/OMhIuSAJccVtT/xJuJj5qvGimUwklsQO6Ku2JY=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3A0GjBQRdW6ptyQiZa6kzYaLMzlGMj4uimEi00z9?=
 =?us-ascii?q?8KlbtKb62//pPkYhCBt+s41QyBVNDB8PsBkOrf6f2+CiQLtIyMtHkSfZALTR?=
 =?us-ascii?q?IBgNUbk19oDJuCE0TwKPOsZCs/T4xCAUR49XO2OlQdSo7iYBWA6na5pWx3eF?=
 =?us-ascii?q?3lOAR4POnzEYPJx5b/2fq1/tWBKwBFnyG0br43LRn+/03dv9UbydkqL6c0x1?=
 =?us-ascii?q?7Xr2FTeuNQjTEgJFTWhRvk4tb14JkroUEy8/km8dJNV7m/Y7UgQPQKRD8hNX?=
 =?us-ascii?q?w44tGuqQPKSxCB62FZX2MdlRZJBQeWpAqvVZDrqm6g7rMsnXHKeJWrHtVWET?=
 =?us-ascii?q?6iuvpmWQbxgwEWDT0YwUOQqcJrkJthpi6ZgyJ75bTUI7mrFeome7/yZPwjV0?=
 =?us-ascii?q?sUDaMzHyYUPZK3SdoJKscEZNQBr5bNngUjqyCEVA++JLPp9S96r37N5JQKi8?=
 =?us-ascii?q?0DVgSf0AZ9Q44Vq335797TP6MSD+OOk/jr0in7dswzu3/k65njQ0wCnvSgTY?=
 =?us-ascii?q?gqSOrb7EQVNDn+h07KuIrgHC7Jzs8ViGm3wst7Cf+v2m98sCwqoAWT3eB8r6?=
 =?us-ascii?q?vJl4UR8EzV8T5pkeNXbYS+GWt9QP21AZpL6WKgNK9YG5MlUzw1lAQ17q87n5?=
 =?us-ascii?q?6/Jhk1w5Em7BrWcsGldIm4+he5aseBfBh4qSlcY5KnjCSb7Emfr4+0SPK7yV?=
 =?us-ascii?q?RGrCdst9CPl0JOz0fY58WWbeAnpE6zgyevhiTK1LlJeHgJvLjjJoQq5r1tyb?=
 =?us-ascii?q?01jXruJSLYlluprKiNK30C3/bNiazuQI/Jj7+jBrAz0iLdFooxuuywWu1jLj?=
 =?us-ascii?q?ksRG6Q3uK4+Jf4013HeKhpgaYEyavCvrbWfMQ6l6PkBzZ33qJ9zTaFCGb+05?=
 =?us-ascii?q?w/pCxSZAENaFeGlY/vI1bUPLXiAOyih0j5iD5w3KOcZO/IH4nNI37fkbzoYb?=
 =?us-ascii?q?d67QtmxREuycxEucIGD6FHK/X3XVX4uNueAxMkYES4wOfiXc10zZhWGXmODa?=
 =?us-ascii?q?mQLL7IvBeW6/guLeiBaM5duDv0J/U/of+7pXgjkFQZcO+i2p4a?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GSAgDkF55dh1VDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgXuCG3FWHRIqhCOJAodpg26WfDYPAQEBAQEBAQEBBgEBGA0IAgE?=
 =?us-ascii?q?BAQGENAqCUiM4EwIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyDRi8?=
 =?us-ascii?q?JMwEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBDwINVEkBARgBAQEBAgEBAiA?=
 =?us-ascii?q?PAQUIAQE3AQUJAQEKGAICJgICA1QGAQkDBgIBAQGDHQGCVyAEAQqvVnWBMoJ?=
 =?us-ascii?q?9AQEFhguBKQMGgQwoiUmCRVaBAj+BESeCaz6CYQQYgVyCeYJejReJWJZYBwM?=
 =?us-ascii?q?9gWWHCI4LBhuCOodOjziOLYgikRQCBAIEBQIVgWmBe1EfUIJsUBAUgU+Dc4U?=
 =?us-ascii?q?UhV9UgQiQEwEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FHAgDoDJ5dfU1DioBlhFxwcxKETYk?=
 =?us-ascii?q?Ci1eWfEUBAQEBAQEBAQEGAQEtAgEBAQGENAqCdTgTAwIJAQEBAwECAgEFAgE?=
 =?us-ascii?q?BAgIQAQEJFgiFaYNGLwkzAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEPAmF?=
 =?us-ascii?q?JGwEFAQIgDwEFCAEBNwEFCQEBChgCAiYCAgNUBgEJAwYCAQEBgx0BggoEAQq?=
 =?us-ascii?q?wWoEygn4BhhOBKQMGIGyJcYMbgQI/gTiCaz6CfYFcgnmCWI0XiViWWAcDPYF?=
 =?us-ascii?q?llRMGG4I6h06POI4tmTYCBAIEBQIVgWmBe1EfUIM8EBSQNYFck10BAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GVAgDjBZ5dh0O0hNFlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgXuCG3BWLyqEI4kCh2gUg1qWfDYPAQEBAQEBAQEBBgEBGA0HAQI?=
 =?us-ascii?q?BAQEBhDQKglIjOBMCAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y?=
 =?us-ascii?q?vCTMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQ8CDVRJAQEYAQEBAQIBAQI?=
 =?us-ascii?q?gDwEFCAEBNwEFCQEBChgCAiYCAgNUBgEJAwYCAQEBgx0BgXsPBAEKr1J1gTK?=
 =?us-ascii?q?CfQEBBYYNgSkDBoEMKIlJgkVWgQI/gREngms+gmEEGIFcgnmCWI0XiViWWAc?=
 =?us-ascii?q?DPYFlhwiOCwYbgjqHTo84ji2IIpEUAgQCBAUCFYFpgXtRH1CCbFAQFIFPg3O?=
 =?us-ascii?q?FFIVfVIEGAQGTXQEB?=
X-IPAS-Result: =?us-ascii?q?A0GSAgDkF55dh1VDioBlHAEBAQEBBwEBEQEEBAEBgXuCG?=
 =?us-ascii?q?3FWHRIqhCOJAodpg26WfDYPAQEBAQEBAQEBBgEBGA0IAgEBAQGENAqCUiM4E?=
 =?us-ascii?q?wIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyDRi8JMwEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBDwINVEkBARgBAQEBAgEBAiAPAQUIAQE3AQUJA?=
 =?us-ascii?q?QEKGAICJgICA1QGAQkDBgIBAQGDHQGCVyAEAQqvVnWBMoJ9AQEFhguBKQMGg?=
 =?us-ascii?q?QwoiUmCRVaBAj+BESeCaz6CYQQYgVyCeYJejReJWJZYBwM9gWWHCI4LBhuCO?=
 =?us-ascii?q?odOjziOLYgikRQCBAIEBQIVgWmBe1EfUIJsUBAUgU+Dc4UUhV9UgQiQEwEB?=
X-IPAS-Result: =?us-ascii?q?A0FHAgDoDJ5dfU1DioBlhFxwcxKETYkCi1eWfEUBAQEBA?=
 =?us-ascii?q?QEBAQEGAQEtAgEBAQGENAqCdTgTAwIJAQEBAwECAgEFAgEBAgIQAQEJFgiFa?=
 =?us-ascii?q?YNGLwkzAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEPAmFJGwEFAQIgDwEFC?=
 =?us-ascii?q?AEBNwEFCQEBChgCAiYCAgNUBgEJAwYCAQEBgx0BggoEAQqwWoEygn4BhhOBK?=
 =?us-ascii?q?QMGIGyJcYMbgQI/gTiCaz6CfYFcgnmCWI0XiViWWAcDPYFllRMGG4I6h06PO?=
 =?us-ascii?q?I4tmTYCBAIEBQIVgWmBe1EfUIM8EBSQNYFck10BAQ?=
X-IPAS-Result: =?us-ascii?q?A0GVAgDjBZ5dh0O0hNFlHAEBAQEBBwEBEQEEBAEBgXuCG?=
 =?us-ascii?q?3BWLyqEI4kCh2gUg1qWfDYPAQEBAQEBAQEBBgEBGA0HAQIBAQEBhDQKglIjO?=
 =?us-ascii?q?BMCAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0YvCTMBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQ8CDVRJAQEYAQEBAQIBAQIgDwEFCAEBNwEFC?=
 =?us-ascii?q?QEBChgCAiYCAgNUBgEJAwYCAQEBgx0BgXsPBAEKr1J1gTKCfQEBBYYNgSkDB?=
 =?us-ascii?q?oEMKIlJgkVWgQI/gREngms+gmEEGIFcgnmCWI0XiViWWAcDPYFlhwiOCwYbg?=
 =?us-ascii?q?jqHTo84ji2IIpEUAgQCBAUCFYFpgXtRH1CCbFAQFIFPg3OFFIVfVIEGAQGTX?=
 =?us-ascii?q?QEB?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="287122150"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371370039"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371304685"
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: migi9492@g.colorado.edu
Subject: Re: [PATCH v3 00/14] dmaengine/soc: Add Texas Instruments UDMA support
To: "Peter Ujfalusi" <peter.ujfalusi@ti.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "nm@ti.com"
 <nm@ti.com>, "ssantosh@kernel.org" <ssantosh@kernel.org>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <c567c1a2-2e74-3809-8e0f-4c2049ba4747@oracle.com>
 <7dd18208-1ca5-c902-dc11-edbd4ded51ed@ti.com>
From: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>
Organization: Oracle Corporation
Message-ID: <5b2d27ca-1a1a-6d17-f5d8-62e7eb76c39b@oracle.com>
Date: Wed, 9 Oct 2019 09:02:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14;
 rv:60.0) Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7dd18208-1ca5-c902-dc11-edbd4ded51ed@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090144
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090144
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:28:40.2221 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 5e3cc18f-5ba2-4312-f9e2-08d74cde2028
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.128.233; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:DM6PR03MB4252; H:ipmx7.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BY2NAM01FT031.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5e3cc18f-5ba2-4312-f9e2-08d74cde2028
X-MS-TrafficTypeDiagnostic: DM6PR03MB4252:|DM6PR03MB4252:
X-MS-Exchange-PUrlCount: 1
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:28:39.9399 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e3cc18f-5ba2-4312-f9e2-08d74cde2028
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.128.233];
 Helo=[ipmx7.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4252
X-MS-Exchange-Transport-EndToEndLatency: 00:15:28.8069951
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eS8vnyberF23Ws9HaOgjEQDm+DK8O5Nr2hl56bFpj3IFwZoA16v9zeX4aCjh?=
 =?us-ascii?Q?TMo8oiJSFgfW/jeIKXEd2LMNIU2A99g2LLSfTfAxTDnBGGZKNnvESuua0wQc?=
 =?us-ascii?Q?yloPxy8D7T23wsn8ZcKn5oIEr2MRrNWRqUAWRTAFAJS22FlI3y/6RaWtN7BU?=
 =?us-ascii?Q?kUcHoPExUvITh0zLY+XIAUU957Se7O/173/VvSivWuEWe/CH82+Ci/z+PBTt?=
 =?us-ascii?Q?Ff+lmSW5clapu0VPfNnhs4euVArbhsnOjl5U8L+567HZPHEU2Lj8akrCyDWo?=
 =?us-ascii?Q?A1sHIfX6EkCFajwg0Rfjc7M3w6JVJclN2MX0GvHwmPaC1a3n82MeMGWnWOWm?=
 =?us-ascii?Q?LXJI4r+djdRmCmJnxwfFNhMGBLifAofHqJnxhgkQkEcM0UCgQffamCrih+8W?=
 =?us-ascii?Q?w0MM22jqW8dZcNlBVNy5JSfTJB6CcoEagGqdGgocu7sfIVlSsvYALXW7zkmo?=
 =?us-ascii?Q?PlPGv8Th5igDH8QeXYd9EjXnouYnifv7AC6rPQIljnmuqUEmsp5Y4000V/qx?=
 =?us-ascii?Q?Ehv7iSmrwEJovcBBb7euJ0eqj+E1t03IdmB/kNixQYTkM+jbttMWSeWwHd5C?=
 =?us-ascii?Q?875j7LLY6UZoVpVAqw+Cz6NE/3Jthgu3msBLqAZDIJS3EnSKNcXqRNb/kOBf?=
 =?us-ascii?Q?h61Y9jJ7WehD70EG+SapDD9QSKvQufJxktt3LXiSncTB9RKIjtdU2buW9DBs?=
 =?us-ascii?Q?DRGPzLb8FgMgmKiuZi1Tq6K7y7mV07Z/kW1bdCfZMfAcAoCklOm0Dkf2OxpC?=
 =?us-ascii?Q?uLG/TxTLZrICJ0CphXixN1A/X2dJwt1uK7RY7lQeX1Y68P9bGK2ulpXxa+X0?=
 =?us-ascii?Q?PRYEZbQsIEYOvTOU22OxziqCi8KbjG3GwY6yUkBYiaUuol77IhVx2z5ViOvl?=
 =?us-ascii?Q?h3n4EkcBjDmpD5PhCam+Bl774S/dHHJv57ouxrcWPK+SDcDdkXRZJbXyRjMS?=
 =?us-ascii?Q?3TH/QSG+Lo/0sGjoRntoFCpwTe63fJup2ZHeUmKP2MX6bysCMPnKsP5Bn/wy?=
 =?us-ascii?Q?ZnWkgSCatC5BaGW9Mvt4FE1kYSH5ClM98vfvE7nu2ynnoYofLI/SAeFuZWpr?=
 =?us-ascii?Q?p4CDjKxkRGuy6mHDsNVuSNUeQqw9gCsKWd2HmyqNEROXOR081TbacICZ0NRH?=
 =?us-ascii?Q?6S5FNSBI3NrfxGuA8Un+kxhwTusBxrSM2SvhUuSINf8KqvG+AUmB8unNjYEy?=
 =?us-ascii?Q?N0SA0wSx8QidG41L?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_213010_016560_51479CD0 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "grygorii.strashko@ti.com" <grygorii.strashko@ti.com>,
 "lokeshvutla@ti.com" <lokeshvutla@ti.com>,
 "j-keerthy@ti.com" <j-keerthy@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "t-kristo@ti.com" <t-kristo@ti.com>, "tony@atomide.com" <tony@atomide.com>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMC84LzE5IDM6MDkgQU0sIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+IEhpIFNhbnRvc2gs
Cj4gCj4gT24gMDQvMTAvMjAxOSAxOS4zNSwgc2FudG9zaC5zaGlsaW1rYXJAb3JhY2xlLmNvbSB3
cm90ZToKPj4gT24gOS8zMC8xOSAxMToxNiBQTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+PiBI
aSwKPj4+Cj4+PiBDaGFuZ2VzIHNpbmNlIHYyCj4+PiApaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wcm9qZWN0L2xpbnV4LWRtYWVuZ2luZS9saXN0Lz9zZXJpZXM9MTUyNjA5JnN0YXRlPSop
Cj4+Pgo+Pj4gLSBCYXNlZCBvbiA1LjQtcmMxCj4+PiAtIFN1cHBvcnQgZm9yIEZsb3cgb25seSBk
YXRhIHRyYW5zZmVyIGZvciB0aGUgZ2x1ZSBsYXllcgo+Pj4KWy4uLl0KCj4+IENhbiB5b3UgcGxl
YXNlIHNwbGl0IHRoaXMgc2VyaWVzIGFuZCBwb3N0IGRyaXZlcnMvc29jLyogYml0cwo+PiBzZXBh
cmF0ZWx5ID/CoCBJZiBpdHMgcmVhZHksIEkgY2FuIGFwcGx5IGszLXJpbmdhY2MuYyBjaGFuZ2Vz
Lgo+IAo+IEknbGwgd2FpdCBjb3VwbGUgb2YgZGF5cyBmb3IgZ3V5cyB0byBjaGVjayB0aGUgc2Vy
aWVzLCB0aGVuIEkgY2FuIHNlbmQKPiB0aGUgc3BsaXQgb3V0IHJpbmdhY2MgcGF0Y2hlcyBzZXBh
cmF0ZWx5Lgo+IApTb3VuZHMgZ29vZCAhIQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
